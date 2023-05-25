import { NextRequest, NextResponse } from 'next/server'
import { createRouteHandlerClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'

export async function GET(
	request: NextRequest,
	{
		params,
	}: {
		params: {
			query: string
		}
	}
) {
	const supabase = createRouteHandlerClient<Database>({ cookies })

	const { data, error } = await supabase
		.from('posts')
		.select('*')
		.ilike('title', `%${params.query}%`)

	if (error) {
		return NextResponse.json({ status: 'error' })
	}

	return NextResponse.json({ status: 'success', posts: data || [] })
}
