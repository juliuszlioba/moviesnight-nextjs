import { NextResponse } from 'next/server'
import { createRouteHandlerClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import { formatISO, add } from 'date-fns'

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

			const { error: resError } = await supabase
				.from('posts')
				.update({
					rating: req.rating,
					recommendation: req.recommendation,
					review: req.review,
					watchedat: formatISO(add(new Date(req.watchedat), { hours: 12 })),
					updatedat: formatISO(new Date()),
				})
				.eq('id', req.id)

			if (resError) {
				return NextResponse.json({ status: 'failed' })
			}

			return NextResponse.json({ status: 'success' })
		} catch (error) {
			return NextResponse.json({ status: 'error' })
		}
	} else {
		return NextResponse.json('Not authorised')
	}
}
