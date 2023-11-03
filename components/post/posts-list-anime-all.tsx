import PostsListItem from '@/components/post/posts-list-item'
import { fetchAllTopPosts } from '@/lib/data'
import supabaseServerClient from '@/lib/supabase'
import { notFound } from 'next/navigation'

export default async function PostsListAllAnimePosts() {
	const supabase = await supabaseServerClient()
	const {
		data: { session },
	} = await supabase.auth.getSession()

	const { posts, count } = await fetchAllTopPosts({ list: 'list_anime_top' })

	if (!posts) {
		return notFound()
	}

	return (
		<div className="divide-y-2 divide-dashed">
			<div className="divide-y-2 divide-dashed">
				{posts.map((post, index) => {
					return <PostsListItem key={index} post={post} session={session} />
				})}
			</div>
		</div>
	)
}
