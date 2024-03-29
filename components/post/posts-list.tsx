import Pagination from '@/components/pagination'
import PostsListItem from '@/components/post/posts-list-item'
import { fetchAllPosts } from '@/lib/data'
import { notFound } from 'next/navigation'

// import { createServerClient, type CookieOptions } from '@supabase/ssr'
// import type { Database } from '@/lib/database.types'
// import { cookies } from 'next/headers'
import supabaseServerClient from '@/lib/supabase'

export default async function PostsList({
	currentPage = 1,
}: {
	currentPage?: number
}) {
	// const supabase = createServerComponentClient<Database>({
	// 	cookies,
	// })
	// const {
	// 	data: { session },
	// } = await supabase.auth.getSession()

	const supabase = await supabaseServerClient()

	const {
		data: { session },
	} = await supabase.auth.getSession()

	const { posts, count } = await fetchAllPosts({ curentPage: currentPage })

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
			<Pagination curentPage={currentPage} totalCount={count} />
		</div>
	)
}
