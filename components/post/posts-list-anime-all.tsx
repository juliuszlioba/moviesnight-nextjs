import PostsListItem from '@/components/post/posts-list-item'
import { fetchAllTopPosts } from '@/lib/data'
import { notFound } from 'next/navigation'
import { createClient } from '@/utils/supabase/server'

export default async function PostsListAllAnimePosts() {
	const supabase = await createClient()
	const { data } = await supabase.auth.getUser()

	const { posts, count } = await fetchAllTopPosts({ list: 'list_anime_top' })

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
		</div>
	)
}
