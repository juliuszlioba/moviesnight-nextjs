import { toInt } from 'radash'
import ListItem from '@/components/post-list-item'
import Error from '@/components/error'
import Pagination from '@/components/pagination'

import { createServerComponentSupabaseClient } from '@supabase/auth-helpers-nextjs'
import { headers, cookies } from 'next/headers'
import type { Database } from '@/types/database.types'

export default async function Page({ params }: { params: { page: string } }) {
	const curentPage = toInt(params.page)
	const postlimit = toInt(process.env.NEXT_PUBLIC_POSTS_LIMIT as string)

	const supabase = createServerComponentSupabaseClient<Database>({
		headers,
		cookies,
	})
	const { data, error } = await supabase.auth.getSession()

	if (error) {
		return <Error message="Problem with loading from database" />
	}

	const { data: posts, count } = await supabase
		.rpc('list_series_top', {}, { count: 'exact' })
		.range(postlimit * curentPage - postlimit, postlimit * curentPage - 1)

	if (!posts) {
		return (
			<div className="flex justify-center">
				<h1>No Posts to show</h1>
			</div>
		)
	}

	if (!count) {
		return (
			<div className="flex justify-center">
				<h1>No Posts to show</h1>
			</div>
		)
	}

	const lastPage =
		Math.floor(count / postlimit) + (count % postlimit > 0 ? 1 : 0)

	if (curentPage > lastPage) {
		return (
			<div className="flex justify-center">
				<h1>No Posts to show</h1>
			</div>
		)
	}

	return (
		<main>
			<div className="flex flex-col px-4 2xl:px-1.5">
				{posts.map((post, index: number) => {
					return (
						<ListItem
							key={index}
							post={post}
							session={data.session ? true : false}
						/>
					)
				})}
				{count && (
					<Pagination
						curentPage={curentPage}
						totalCount={count}
						urlPrefix="series/top"
					/>
				)}
			</div>
		</main>
	)
}
