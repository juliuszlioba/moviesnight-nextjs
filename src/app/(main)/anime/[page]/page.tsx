import { toInt } from 'radash'
import ListItem from '@/components/post-list-item'
import Error from '@/components/error'
import Pagination from '@/components/pagination'

import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import Header from '../header'

export default async function Page({ params }: { params: { page: string } }) {
	const curentPage = toInt(params.page)
	const postlimit = toInt(process.env.NEXT_PUBLIC_POSTS_LIMIT as string)

	const supabase = createServerComponentClient<Database>({
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
		.rpc('list_anime_top', {}, { count: 'exact' })
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
			<Header total={count} session={session ? true : false} />
			<div className="flex flex-col px-4 2xl:px-1.5">
				{posts.map((post, index: number) => {
					return (
						<ListItem
							key={index}
							post={post}
							session={session ? true : false}
							listRating={true}
							positionInList={index + (curentPage - 1) * postlimit + 1}
						/>
					)
				})}
				{count && (
					<Pagination
						curentPage={curentPage}
						totalCount={count}
						urlPrefix="anime"
					/>
				)}
			</div>
		</main>
	)
}
