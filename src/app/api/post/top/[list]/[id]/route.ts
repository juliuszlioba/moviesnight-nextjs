import { createRouteHandlerClient } from '@supabase/auth-helpers-nextjs'
import { NextResponse } from 'next/server'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import { toInt } from 'radash'

// Get position from list
export async function GET(
	request: Request,
	{
		params,
	}: {
		params: {
			list: 'list_anime_top' | 'list_movies_top' | 'list_series_top'
			id: string
		}
	}
) {
	if (params.list !== 'list_anime_top') {
		return NextResponse.json({ status: 'error' })
	}
	const supabase = createRouteHandlerClient<Database>({ cookies })

	const { data, error }: any = await supabase
		.rpc('list_anime_top_position', {
			id: toInt(params.id),
		})
		.single()

	if (error) {
		return NextResponse.json({ status: 'error' })
	}

	return NextResponse.json({ status: 'success', position: data })
}

// Add to list
export async function POST(
	request: Request,
	{
		params,
	}: {
		params: {
			list: 'list_anime_top' | 'list_movies_top' | 'list_series_top'
			id: string
		}
	}
) {
	const supabase = createRouteHandlerClient<Database>({ cookies })

	const {
		data: { session },
		error,
	} = await supabase.auth.getSession()

	if (error) {
		return NextResponse.json({ status: 'error' })
	}

	if (session) {
		try {
			// Get current list
			const { data: listArray } = await supabase
				.from(params.list)
				.select(`id, list`)
				.single()

			if (!listArray) {
				return NextResponse.json({ status: 'error' })
			}

			const listArrayId = listArray.id
			const dataArray = listArray.list

			if (!dataArray) {
				return NextResponse.json({ status: 'error' })
			}

			// Check for duplicate
			const duplicatePass = dataArray.indexOf(toInt(params.id)) // if -1 = do not exist in array

			if (duplicatePass < 0) {
				// Add new item to array
				dataArray.push(toInt(params.id))

				// > ADD STEP 1
				// replace array with new array containing new id
				const { error } = await supabase
					.from(params.list)
					.update({ list: dataArray })
					.eq('id', listArrayId)
				if (error) {
					return NextResponse.json({ status: 'error' })
				}

				// > ADD STEP 2
				// Add linking meta to post
				if (params.list === 'list_anime_top') {
					//if ...anime
					const { error } = await supabase
						.from('posts')
						.update({ linkanime: true })
						.eq('id', params.id)

					if (error) {
						return NextResponse.json({ status: 'error' })
					}
				} else {
					//if ...movie or series
					const { error } = await supabase
						.from('posts')
						.update({ recommended: true })
						.eq('id', params.id)
					if (error) {
						return NextResponse.json({ status: 'error' })
					}
				}

				return NextResponse.json({ status: 'success' })
			} else {
				// if already in list
				return NextResponse.json({ status: 'error' })
			}
		} catch (error) {
			return NextResponse.json({ status: 'error' })
		}
	} else {
		return NextResponse.json('Not authorised')
	}
}

// Remove from list
export async function DELETE(
	request: Request,
	{
		params,
	}: {
		params: {
			list: 'list_anime_top' | 'list_movies_top' | 'list_series_top'
			id: string
		}
	}
) {
	const supabase = createRouteHandlerClient<Database>({ cookies })

	const {
		data: { session },
		error,
	} = await supabase.auth.getSession()

	if (error) {
		return NextResponse.json({ status: 'error' })
	}

	if (session) {
		try {
			// Get current list
			const { data: listArray } = await supabase
				.from(params.list)
				.select(`id, list`)
				.single()

			if (!listArray) {
				return NextResponse.json({ status: 'error' })
			}

			const listArrayId = listArray.id
			const dataArray = listArray.list

			if (!dataArray) {
				return NextResponse.json({ status: 'error' })
			}

			// Check for duplicate
			const duplicatePass = dataArray.indexOf(toInt(params.id)) // if -1 = do not exist in array

			if (duplicatePass > -1) {
				// Remove item from array
				const filteredArray = dataArray.filter(function (value: number) {
					return value !== toInt(params.id)
				})

				// > REMOVE STEP 1
				// replace array with new array containing new id
				const { error } = await supabase
					.from(params.list)
					.update({ list: filteredArray })
					.eq('id', listArrayId)
				if (error) {
					return NextResponse.json({ status: 'error' })
				}

				// > REMOVE STEP 2
				// Remove linking meta to post
				if (params.list === 'list_anime_top') {
					//if ...anime
					const { error } = await supabase
						.from('posts')
						.update({ linkanime: false })
						.eq('id', params.id)

					if (error) {
						return NextResponse.json({ status: 'error' })
					}
				} else {
					//if ...movie or series
					const { error } = await supabase
						.from('posts')
						.update({ recommended: false })
						.eq('id', params.id)
					if (error) {
						return NextResponse.json({ status: 'error' })
					}
				}

				return NextResponse.json({ status: 'success' })
			} else {
				// if already in list
				return NextResponse.json({ status: 'error' })
			}
		} catch (error) {
			return NextResponse.json({ status: 'error' })
		}
	} else {
		return NextResponse.json('Not authorised')
	}
}
