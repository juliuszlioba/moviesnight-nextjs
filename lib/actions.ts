'use server'

import * as z from 'zod'

import { createClient } from '@/utils/supabase/server'
import { formatISO } from 'date-fns'
import { toInt } from 'radash'
import { revalidatePath } from 'next/cache'
import slugify from '@/lib/slugify'
import type { PostEditFormSchema } from '@/lib/post.types'
import type { TMDBresultsEntity } from '@/lib/tmdb.types'
import type { ListTypes } from '@/lib/list.types'

export interface Status {
	status: 'success' | 'error' | 'unauthorised'
	message?: string | unknown
	redirectTo?: string
}

export async function addPost({
	post,
}: {
	post: TMDBresultsEntity
}): Promise<Status> {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		return { status: 'error' }
	}

	function preocessData(post: TMDBresultsEntity) {
		const year =
			post.release_date?.substring(0, 4) ||
			post.first_air_date?.substring(0, 4) ||
			'0'

		return {
			tmdbid: post.id,
			mediatype: post.media_type,
			poster: post.poster_path || '',
			title: post.title! || post.name!,
			year: parseInt(year),
			slug: slugify(post.title! || post.name!),
			recommendation: '',
			review: '',
			rating: 0,
		}
	}

	const handleGenres = (genresIndexes: number[], postid: number) => {
		genresIndexes.map(async (genreIndex: number) => {
			await supabase
				.from('posts_ganres')
				.insert({ post_id: postid, ganre_id: genreIndex })
		})
		return
	}

	if (user) {
		try {
			// 1: check for existing record
			const slug = slugify(post.title! || post.name!)
			const year =
				post.release_date?.substring(0, 4) ||
				post.first_air_date?.substring(0, 4)

			if (!year) {
				throw new Error('error')
			}

			const { data, count, error } = await supabase
				.from('posts')
				.select('*', { count: 'exact' })
				.eq('slug', slug)
				.eq('year', year)

			// 2: prepare data
			const dataLoad = preocessData(post)

			// 3: Insert to database
			const { data: returndata, error: resError } = await supabase
				.from('posts')
				.insert(dataLoad)
				.select()
				.single()

			if (resError) {
				throw new Error('error')
			}

			// 4: Handle ganres
			if (post.genre_ids) {
				handleGenres(post.genre_ids, returndata.id)
			}

			revalidatePath('/(main)/[mediatype]/[year]/[slug]', 'page')
			revalidatePath('/', 'page')

			return {
				status: 'success',
				redirectTo: `/${dataLoad.mediatype}/${dataLoad.year}/${dataLoad.slug}`,
			}
		} catch (error) {
			console.log('Database Error')
			return { status: 'error' }
		}
	} else {
		console.log('Error: Unautorised')
		return { status: 'unauthorised' }
	}
}

interface AddPostToListProps extends ListTypes {
	id: number
}
export async function addPostToTopList({
	id,
	list,
}: AddPostToListProps): Promise<Status> {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		return { status: 'error' }
	}

	if (user) {
		try {
			// Get current list
			const { data: listArray } = await supabase
				.from(list)
				.select(`id, list`)
				.single()

			if (!listArray) {
				throw new Error('error')
			}

			const listArrayId = listArray.id
			const dataArray = listArray.list

			if (!dataArray) {
				throw new Error('error')
			}

			// Check for duplicate
			const duplicatePass = dataArray.indexOf(toInt(id)) // if -1 = do not exist in array

			if (duplicatePass < 0) {
				// Add new item to array
				dataArray.push(toInt(id))

				// > ADD STEP 1
				// replace array with new array containing new id
				const { error } = await supabase
					.from(list)
					.update({ list: dataArray })
					.eq('id', listArrayId)
				if (error) {
					throw new Error('error')
				}

				return { status: 'success' }
			}

			// if already in list
			throw new Error('already in list')
		} catch (error: any) {
			console.log('Database Error')
			return { status: 'error', message: error?.message }
		}
	} else {
		console.log('Error: Unautorised')
		return { status: 'unauthorised' }
	}
}

export async function updatePost({
	values,
	prevState,
}: {
	values: z.infer<typeof PostEditFormSchema>
	prevState?: {
		linkanime: boolean
		recommended: boolean
	}
}): Promise<Status> {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		return { status: 'error' }
	}

	if (user) {
		try {
			//await new Promise((resolve) => setTimeout(resolve, 3000)) //!
			const { data, error: supabaseError } = await supabase
				.from('posts')
				.update({
					rating: toInt(values.rating),
					recommendation: values.recommendation,
					review: values.review,
					watchedat: formatISO(new Date(values.watchedAt)),
					updatedat: formatISO(new Date()),
					linkanime: values.linkanime,
					recommended: values.recommended,
				})
				.eq('id', values.id)
				.select()
				.single()

			if (supabaseError) {
				throw new Error('error')
			}

			// handle if animelink status updated
			if (data.linkanime !== prevState?.linkanime) {
				if (data.linkanime) {
					//add
					await addPostToTopList({ id: values.id, list: 'list_anime_top' })
				} else {
					// remove
					await removePostFromTopList({ id: values.id, list: 'list_anime_top' })
				}

				revalidatePath('/(main)/anime', 'page')
			}

			// handle if recomended status updated
			if (data.recommended !== prevState?.recommended) {
				// if movie
				if (data.mediatype === 'movie') {
					if (data.recommended) {
						// add
						await addPostToTopList({ id: values.id, list: 'list_movies_top' })
					} else {
						// remove
						await removePostFromTopList({
							id: values.id,
							list: 'list_movies_top',
						})
					}
				}

				// if series
				if (data.mediatype === 'tv') {
					if (data.recommended) {
						//add
						await addPostToTopList({ id: values.id, list: 'list_series_top' })
					} else {
						//remove
						await removePostFromTopList({
							id: values.id,
							list: 'list_series_top',
						})
					}
				}

				revalidatePath('/(main)/top/[mediatype]', 'page')
			}

			revalidatePath('/(main)/[mediatype]/[year]/[slug]', 'page')
			revalidatePath('/', 'page')

			return { status: 'success' }
		} catch (error) {
			console.log('Database Error')
			return { status: 'error' }
		}
	} else {
		console.log('Error: Unautorised')
		return { status: 'unauthorised' }
	}
}

interface EditPostPositionInTopListProps extends ListTypes {
	id: number
	position: number
}
export async function editPostPositionInTopList({
	id,
	list,
	position,
}: EditPostPositionInTopListProps): Promise<Status> {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		return { status: 'error' }
	}

	const findCurrentIndexInArray = (arr: number[], item: number) => {
		const result = arr.indexOf(item)
		return result
	}

	//Change index in array
	const moveArrayItemToNewIndex = (
		arr: any,
		old_index: any,
		new_index: any
	) => {
		if (new_index >= arr.length) {
			var k = new_index - arr.length + 1
			while (k--) {
				arr.push(undefined)
			}
		}
		arr.splice(new_index, 0, arr.splice(old_index, 1)[0])
		const result = arr.filter(Boolean) // Remove all falsy values
		return result
	}

	if (user) {
		try {
			// 1. Get current list
			const { data: listArray } = await supabase
				.from(list)
				.select(`id, list`)
				.single()

			if (!listArray) {
				throw new Error('error')
			}

			const listArrayId = listArray.id
			const dataArray = listArray.list

			if (!dataArray) {
				throw new Error('error')
			}

			// 2. Find curent index of object
			const oldIndex = findCurrentIndexInArray(dataArray, toInt(id))

			// 3. Change index
			const newArray = moveArrayItemToNewIndex(dataArray, oldIndex, position)

			// replace array with new array containing new id
			const { error } = await supabase
				.from(list)
				.update({ list: newArray })
				.eq('id', listArrayId)
			if (error) {
				throw new Error('error')
			}

			revalidatePath('/(main)/[mediatype]/[year]/[slug]', 'page')

			return { status: 'success' }
		} catch (error) {
			console.log('Database Error')
			return { status: 'error' }
		}
	} else {
		console.log('Error: Unautorised')
		return { status: 'unauthorised' }
	}
}

interface UpdateTopListProps extends ListTypes {
	newList: number[]
}

export async function updateTopList({
	list,
	newList,
}: UpdateTopListProps): Promise<Status> {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		return { status: 'error' }
	}

	if (user) {
		try {
			// Get current list
			const { data: listArray } = await supabase
				.from(list)
				.select(`id, list`)
				.single()

			if (!listArray) {
				throw new Error('error')
			}

			const listArrayId = listArray.id

			// Overwrite new array
			const { error } = await supabase
				.from(list)
				.update({ list: newList })
				.eq('id', listArrayId)

			// Revalidation requests
			if ((list = 'list_anime_top')) {
				revalidatePath('/anime', 'page')
			}
			if ((list = 'list_movies_top')) {
				revalidatePath('/top/movie', 'page')
			}
			if ((list = 'list_series_top')) {
				revalidatePath('/top/tv', 'page')
			}

			return { status: 'success' }
		} catch (error) {
			console.log('Database Error')
			return { status: 'error' }
		}
	} else {
		console.log('Error: Unautorised')
		return { status: 'unauthorised' }
	}
}

export async function deletePost({
	id,
	postMeta,
}: {
	id: number
	postMeta: {
		mediaType: string
		linkanime: boolean
		recommended: boolean
	}
}): Promise<Status> {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		return { status: 'error' }
	}

	if (user) {
		try {
			// run list checks and ...

			// remove from anime List
			if (postMeta.linkanime) {
				await removePostFromTopList({ id, list: 'list_anime_top' })
			}

			// remove from anime List
			if (postMeta.recommended) {
				if (postMeta.mediaType === 'movie') {
					await removePostFromTopList({
						id: id,
						list: 'list_movies_top',
					})
				}

				if (postMeta.mediaType === 'tv') {
					await removePostFromTopList({
						id: id,
						list: 'list_series_top',
					})
				}
			}

			const { error: supabaseError } = await supabase
				.from('posts')
				.delete()
				.eq('id', id.toString())

			if (supabaseError) {
				throw new Error('error')
			}

			revalidatePath('/', 'page')

			return { status: 'success' }
		} catch (error) {
			console.log('Database Error')
			return { status: 'error' }
		}
	} else {
		console.log('Error: Unautorised')
		return { status: 'unauthorised' }
	}
}

interface RemovePostToListProps extends ListTypes {
	id: number
	handlePostMeta?: boolean
}
export async function removePostFromTopList({
	id,
	list,
	handlePostMeta = false,
}: RemovePostToListProps): Promise<Status> {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		return { status: 'error' }
	}

	if (user) {
		try {
			// Get current list
			const { data: listArray } = await supabase
				.from(list)
				.select(`id, list`)
				.single()

			if (!listArray) {
				throw new Error('error')
			}

			const listArrayId = listArray.id
			const dataArray = listArray.list

			if (!dataArray) {
				throw new Error('error')
			}

			// Check for duplicate
			const duplicatePass = dataArray.indexOf(toInt(id)) // if -1 = do not exist in array

			if (duplicatePass > -1) {
				// Remove item from array
				const filteredArray = dataArray.filter(function (value: number) {
					return value !== toInt(id)
				})

				// > REMOVE STEP 1
				// replace array with new array containing new id
				const { error } = await supabase
					.from(list)
					.update({ list: filteredArray })
					.eq('id', listArrayId)
				if (error) {
					throw new Error('error')
				}

				// TODO implament removeing directly from toplist
				if (handlePostMeta) {
					// > REMOVE STEP 2
					// Remove linking meta to post
					if (list === 'list_anime_top') {
						// if ...anime
						const { error } = await supabase
							.from('posts')
							.update({ linkanime: false })
							.eq('id', id)
						if (error) {
							throw new Error('error')
						}
					} else {
						// if ...movie or series
						const { error } = await supabase
							.from('posts')
							.update({ recommended: false })
							.eq('id', id)
						if (error) {
							throw new Error('error')
						}
					}
				}

				return { status: 'success' }
			}

			// if already in list
			throw new Error('not in the list')
		} catch (error: any) {
			console.log('Database Error')
			return { status: 'error', message: error?.message }
		}
	} else {
		console.log('Error: Unautorised')
		return { status: 'unauthorised' }
	}
}
