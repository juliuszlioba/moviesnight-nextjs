import { createRouteHandlerSupabaseClient } from '@supabase/auth-helpers-nextjs'
import { NextRequest, NextResponse } from 'next/server'
import { headers, cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import { toInt } from 'radash'

//! To-Do
// Update whole list
// (list sorting uses client side sorting)
export async function PUT(
	request: NextRequest,
	{
		params,
	}: {
		params: {
			list: 'list_anime_top' | 'list_movies_top' | 'list_series_top'
		}
	}
) {
	const data = await request.json()

	const supabase = createRouteHandlerSupabaseClient<Database>({
		headers,
		cookies,
	})
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

			// Overwrite new array
			const { error } = await supabase
				.from(params.list)
				.update({ list: data })
				.eq('id', listArrayId)

			if (error) {
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
