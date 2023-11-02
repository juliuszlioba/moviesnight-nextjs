import Pagination from '@/components/pagination'
import PostsListItem from '@/components/post/posts-list-item'
import { fetchTopMoviesPosts } from '@/lib/data'
import supabaseServerClient from '@/lib/supabase'
import { notFound } from 'next/navigation'

export default async function PostsListTopMoviesPosts({
	currentPage = 1,
}: {
	currentPage?: number
}) {
	const supabase = await supabaseServerClient()
	const {
		data: { session },
	} = await supabase.auth.getSession()

	const { posts, count } = await fetchTopMoviesPosts({
		curentPage: currentPage,
	})

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
			<Pagination
				curentPage={currentPage}
				totalCount={count}
				urlPrefix={'top/movie'}
			/>
		</div>
	)
}
