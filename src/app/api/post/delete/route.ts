import { NextResponse } from 'next/server'
import { createRouteHandlerClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import { toInt } from 'radash'

export async function POST(request: Request) {
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
			const req = await request.json()

			//! TO-DO
			// 1. check if in some top list and delete from it
			// const lists = ['list_anime_top', 'list_movies_top', 'list_series_top']
			// const { data: moviesListArray } = await supabase
			// 	.from('list_movies_top')
			// 	.select(`id, list`)
			// 	.single()
			// const check = moviesListArray?.list?.find((el) => el === req.id)
			// console.log(check)

			// 2. Delete post record from database
			const { error: resError } = await supabase
				.from('posts')
				.delete()
				.eq('id', req.id.toString())

			if (resError) {
				return NextResponse.json({ status: 'error' })
			}

			return NextResponse.json({ status: 'success' })
		} catch (error) {
			return NextResponse.json({ status: 'error' })
		}
	} else {
		return NextResponse.json('Not authorised')
	}
}
