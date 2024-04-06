import Pagination from '@/components/pagination'
import PostsListItem from '@/components/post/posts-list-item'
import { fetchAllPosts } from '@/lib/data'
import { notFound } from 'next/navigation'
import { createClient } from '@/utils/supabase/server'

export default async function PostsList({
	currentPage = 1,
}: {
	currentPage?: number
}) {
	const supabase = createClient()

	const { data } = await supabase.auth.getUser()
	const { posts, count } = await fetchAllPosts({ curentPage: currentPage })

	if (!posts) {
		return notFound()
	}

	return (
		<div className="divide-y-2 divide-dashed">
			<div className="divide-y-2 divide-dashed">
				{posts.map((post, index) => {
					return <PostsListItem key={index} post={post} auth={data.user} />
				})}
			</div>
			<Pagination curentPage={currentPage} totalCount={count} />
		</div>
	)
}
