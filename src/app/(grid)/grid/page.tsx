import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import GridListItem from '@/components/post-grid-list-item'

import { toInt } from 'radash'
import Pagination from '@/components/pagination'

// do not cache this page
export const revalidate = 0

export default async function Page() {
	const curentPage = 1
	const postlimit = toInt(process.env.NEXT_PUBLIC_POSTS_GRID_LIMIT as string)

	const supabase = createServerComponentClient<Database>({
		cookies,
	})

	const { data: posts, count } = await supabase
		.from('posts')
		.select('*', { count: 'exact' })
		.order('watchedat', { ascending: false })
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
			<div className="grid grid-cols-2 gap-1 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 2xl:grid-cols-10">
				{posts.map((post, index: number) => {
					return <GridListItem key={index} post={post} />
				})}
			</div>
			{count && (
				<Pagination
					curentPage={1}
					totalCount={count}
					urlPrefix="grid"
					grid={true}
				/>
			)}
		</main>
	)
}
