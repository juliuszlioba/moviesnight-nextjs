import Pagination from '@/components/pagination'
import PostsGridItem from '@/components/post//posts-grid-item'
import { fetchTopAnimePosts } from '@/lib/data'
import { notFound } from 'next/navigation'

export default async function PostsGridAnime({
	currentPage = 1,
}: {
	currentPage?: number
}) {
	const { posts, count } = await fetchTopAnimePosts({
		curentPage: currentPage,
		grid: true,
	})

	if (!posts) {
		return notFound()
	}

	return (
		<div className="divide-y-2 divide-dashed">
			<div className="grid grid-cols-2 gap-2 pb-4 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 2xl:grid-cols-10">
				{posts.map((post, index) => {
					return <PostsGridItem key={index} post={post} />
				})}
			</div>
			<Pagination
				curentPage={currentPage}
				totalCount={count}
				grid={true}
				urlPrefix={'grid/anime'}
			/>
		</div>
	)
}
