import Pagination from '@/components/pagination'
import PostsGridItem from '@/components/post//posts-grid-item'
import { fetchTopMoviesPosts } from '@/lib/data'
import { notFound } from 'next/navigation'

export default async function PostsGridTopMoviesPosts({
	currentPage = 1,
}: {
	currentPage?: number
}) {
	const { posts, count } = await fetchTopMoviesPosts({
		curentPage: currentPage,
		grid: true,
	})

	if (!posts) {
		return notFound()
	}

	return (
		<div className="divide-y-2 divide-dashed">
			<div className="grid grid-cols-2 gap-3 pb-4 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-7 2xl:grid-cols-10">
				{posts.map((post, index) => {
					return <PostsGridItem key={index} post={post} />
				})}
			</div>
			<Pagination
				curentPage={currentPage}
				totalCount={count}
				grid={true}
				urlPrefix={'grid/top/movie'}
			/>
		</div>
	)
}
