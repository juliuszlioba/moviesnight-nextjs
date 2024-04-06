import { createClient } from '@/utils/supabase/server'
import { toInt } from 'radash'
import type { TMDBresultsEntity } from './tmdb.types'
import { ListTypes } from './list.types'

const POSTLIMIT = toInt(process.env.NEXT_PUBLIC_POSTS_LIMIT)
const GRIDPOSTLIMIT = toInt(process.env.NEXT_PUBLIC_POSTS_GRID_LIMIT)
const TMDB_API_KEY = process.env.TMDB_API_KEY

export async function fetchAllPosts({
	curentPage = 1,
	grid = false,
}: {
	curentPage?: number
	grid?: boolean
}) {
	const postLimit = grid ? GRIDPOSTLIMIT : POSTLIMIT
	const supabase = createClient()

	try {
		// await new Promise((resolve) => setTimeout(resolve, 3000)) //!
		const { data: posts, count } = await supabase
			.from('posts')
			.select('*', { count: 'exact' })
			.order('watchedat', { ascending: false })
			.range(postLimit * curentPage - postLimit, postLimit * curentPage - 1)

		return { posts, count: count || 0 }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch All Posts.')
	}
}

export async function fetchAllPostsCount() {
	const supabase = createClient()

	try {
		// await new Promise((resolve) => setTimeout(resolve, 3000)) //!
		const { count } = await supabase
			.from('posts')
			.select('*', { count: 'exact' })

		return { count: count || 0 }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch All Posts Pages.')
	}
}

export async function fetchTopAnimePosts({
	curentPage = 1,
	grid = false,
}: {
	curentPage?: number
	grid?: boolean
}) {
	const postLimit = grid ? GRIDPOSTLIMIT : POSTLIMIT
	const supabase = createClient()

	try {
		const { data: posts, count } = await supabase
			.rpc('list_anime_top', {}, { count: 'exact' })
			.range(postLimit * curentPage - postLimit, postLimit * curentPage - 1)

		return { posts, count: count || 0 }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch All Posts.')
	}
}

interface FetchAllTopPostsProps extends ListTypes {}

export async function fetchAllTopPosts({ list }: FetchAllTopPostsProps) {
	const supabase = createClient()

	try {
		// await new Promise((resolve) => setTimeout(resolve, 3000)) //!

		const { data: posts, count } = await supabase.rpc(
			//'list_anime_top',
			list,
			{},
			{ count: 'exact' }
		)

		return { posts, count: count || 0 }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch All Anime Posts.')
	}
}

export async function fetchAnimePostsCount() {
	const supabase = createClient()

	try {
		// 1. Get current list
		const { data: listArray } = await supabase
			.from('list_anime_top')
			.select(`id, list`)
			.single()

		if (!listArray) {
			throw new Error('error')
		}

		const count = (listArray.list && listArray.list.length) || 0

		return { count: count }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch All Posts Pages.')
	}
}

export async function fetchTopMoviesPosts({
	curentPage = 1,
	grid = false,
}: {
	curentPage?: number
	grid?: boolean
}) {
	const postLimit = grid ? GRIDPOSTLIMIT : POSTLIMIT
	const supabase = createClient()

	try {
		const { data: posts, count } = await supabase
			.rpc('list_movies_top', {}, { count: 'exact' })
			.range(postLimit * curentPage - postLimit, postLimit * curentPage - 1)

		return { posts, count: count || 0 }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch All Posts.')
	}
}

export async function fetchTopSeriesPosts({
	curentPage = 1,
	grid = false,
}: {
	curentPage?: number
	grid?: boolean
}) {
	const postLimit = grid ? GRIDPOSTLIMIT : POSTLIMIT
	const supabase = createClient()

	try {
		const { data: posts, count } = await supabase
			.rpc('list_series_top', {}, { count: 'exact' })
			.range(POSTLIMIT * curentPage - POSTLIMIT, POSTLIMIT * curentPage - 1)

		return { posts, count: count || 0 }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch All Posts.')
	}
}

export async function fetchPost({
	slug,
	year,
}: {
	slug: string
	year: number
}) {
	const supabase = createClient()

	try {
		const { data: post } = await supabase
			.from('posts')
			.select('*')
			.eq('year', `${year}`)
			.eq('slug', `${slug}`)
			.limit(1)
			.single()
		return { post }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch Post.')
	}
}

export async function fetchPostMetadata({
	mediatype,
	tmdbid,
}: {
	mediatype: string
	tmdbid: number
}) {
	const tmdbApiUrl = `https://api.themoviedb.org/3/${mediatype}/${tmdbid}?api_key=${TMDB_API_KEY}`

	try {
		const data = await fetch(tmdbApiUrl)
			.then((response) => response.json())
			.then((data) => {
				return {
					voteAvarage: data?.vote_average || '',
					runtime: data?.runtime || '',
					overview: data?.overview || '',
					imdbId: data?.imdb_id || '',
					seasons: data?.number_of_seasons || '',
					episodes: data?.number_of_episodes || '',
				}
			})

		return { data }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch Post Metadata.')
	}
}

export async function getAnimeListPostion({
	id,
}: {
	id: number
}): Promise<number> {
	const supabase = createClient()

	try {
		//! any
		const { data, error }: any = await supabase
			.rpc('list_anime_top_position', {
				id,
			})
			.single()

		return data
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch Anime Post position.')
	}
}

export async function fetchSearchResults({
	searchQuery,
	curentPage = 1,
}: {
	searchQuery: string
	curentPage?: number
}) {
	const postLimit = POSTLIMIT
	const supabase = createClient()

	try {
		const { data: posts, count } = await supabase
			.from('posts')
			.select('*', { count: 'exact' })
			.ilike('title', `%${searchQuery}%`)
			.order('watchedat', { ascending: false })
			.range(postLimit * curentPage - postLimit, postLimit * curentPage - 1)

		return { posts, count: count || 0 }
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch All Posts.')
	}
}

export async function fetchTmdbSearchResults({
	searchQuery,
}: {
	searchQuery: string
}) {
	const tmdbApiUrl = `https://api.themoviedb.org/3/search/multi?language=en-US&api_key=${TMDB_API_KEY}&query=${searchQuery}`

	try {
		const data = await fetch(tmdbApiUrl)
			.then((response) => response.json())
			.catch((error) => {
				return { status: error }
			})

		return data.results as TMDBresultsEntity[]
	} catch (error) {
		console.error('Database Error:', error)
		throw new Error('Failed to fetch Post Metadata.')
	}
}
