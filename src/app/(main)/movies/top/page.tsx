import { toInt } from 'radash'
import ListItem from '@/components/post-list-item'
import Error from '@/components/error'
import Pagination from '@/components/pagination'

import { createServerComponentSupabaseClient } from '@supabase/auth-helpers-nextjs'
import { headers, cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import Header from './header'

export default async function Home() {
	const curentPage = 1
	const postlimit = toInt(process.env.NEXT_PUBLIC_POSTS_LIMIT as string)

	const supabase = createServerComponentSupabaseClient<Database>({
		headers,
		cookies,
	})
	const {
		data: { session },
		error,
	} = await supabase.auth.getSession()

	if (error) {
		return <Error message="Problem with loading from database" />
	}

	const { data: posts, count } = await supabase
		.rpc('list_movies_top', {}, { count: 'exact' })
		.range(postlimit * curentPage - postlimit, postlimit * curentPage - 1)

	if (!posts) {
		return (
			<div className="flex justify-center">
				<h1>No Posts to show</h1>
			</div>
		)
	}

	return (
		<main>
			<Header session={session ? true : false} />
			<div className="flex flex-col px-4 2xl:px-1.5">
				{posts.map((post, index: number) => {
					return (
						<ListItem
							key={index}
							post={post}
							session={session ? true : false}
						/>
					)
				})}
				{count && (
					<Pagination
						curentPage={1}
						totalCount={count}
						urlPrefix="movies/top"
					/>
				)}
			</div>
		</main>
	)
}
