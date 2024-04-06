import Pagination from '@/components/pagination'
import PostsListItem from '@/components/post/posts-list-item'
import { fetchTopAnimePosts } from '@/lib/data'
import { createClient } from '@/utils/supabase/server'
import { notFound } from 'next/navigation'
import { toInt } from 'radash'

const POSTLIMIT = toInt(process.env.NEXT_PUBLIC_POSTS_LIMIT)

export default async function PostsListAnimePosts({
	currentPage = 1,
}: {
	currentPage?: number
}) {
	const supabase = createClient()
	const { data } = await supabase.auth.getUser()

	const { posts, count } = await fetchTopAnimePosts({
		curentPage: currentPage,
	})

	if (!posts) {
		return notFound()
	}

	return (
		<div className="divide-y-2 divide-dashed">
			<div className="divide-y-2 divide-dashed">
				{posts.map((post, index) => {
					return (
						<PostsListItem
							key={index}
							post={post}
							auth={data.user}
							positionInList={index + 1 + POSTLIMIT * (currentPage - 1)}
							listRating={true}
						/>
					)
				})}
			</div>
			<Pagination
				curentPage={currentPage}
				totalCount={count}
				urlPrefix={'anime'}
			/>
		</div>
	)
}
