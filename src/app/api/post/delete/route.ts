import { NextResponse } from 'next/server'
import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'

export async function POST(request: Request) {
	const supabase = createServerComponentClient<Database>({
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
			const req = await request.json()

			//! TO-DO: check if in some top list and delete from it

			// Delete post itself
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
