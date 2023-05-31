import { NextResponse } from 'next/server'
import { createRouteHandlerClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import { TMDBresultsEntity } from '@/types/tmdb.types'
import slugify from '@/utils/slugify'

export async function POST(request: Request) {
	const supabase = createRouteHandlerClient<Database>({ cookies })
	const {
		data: { session },
		error,
	} = await supabase.auth.getSession()

	if (error) {
		return NextResponse.json({ status: 'error' })
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

	const handleGenres = (genresIndexes: any, postid: number) => {
		genresIndexes.map(async (genreIndex: number) => {
			await supabase
				.from('posts_ganres')
				.insert({ post_id: postid, ganre_id: genreIndex })
		})
		return
	}

	if (session) {
		try {
			const post = await request.json()

			// 1: check for existing record
			const slug = slugify(post.title! || post.name!)
			const year =
				post.release_date?.substring(0, 4) ||
				post.first_air_date?.substring(0, 4)
			const { data, count, error } = await supabase
				.from('posts')
				.select('*', { count: 'exact' })
				.eq('slug', slug)
				.eq('year', year)

			if (count !== 0) {
				return NextResponse.json({ status: 'error' })
			}

			// 2: prepare data
			const dataLoad = preocessData(post)

			// 3: Insert to database
			const { data: returndata, error: resError } = await supabase
				.from('posts')
				.insert(dataLoad)
				.select()
				.single()

			if (resError) {
				return NextResponse.json({ status: 'error' })
			}

			// 4: Handle ganres
			await handleGenres(post.genre_ids, returndata.id)

			return NextResponse.json({ status: 'success' })
		} catch (error) {
			return NextResponse.json({ status: 'error' })
		}
	} else {
		return NextResponse.json('Not authorised')
	}
}
