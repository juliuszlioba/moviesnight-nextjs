import { Suspense } from 'react'
import { PostsGridSkeleton } from '@/components/skeletons'
import PostsGridTopMoviesPosts from '@/components/post/posts-grid-movies'
import PostsGridTopSeriesPosts from '@/components/post/posts-grid-tv'

export default async function GridPage({
	searchParams,
	params,
}: {
	searchParams?: {
		page?: string
	}
	params: { mediatype: string }
}) {
	const currentPage = Number(searchParams?.page) || 1

	if (params.mediatype === 'movie') {
		return (
			<main className="flex flex-col">
				<Suspense
					key={currentPage}
					fallback={<PostsGridSkeleton grid={true} />}
				>
					<PostsGridTopMoviesPosts currentPage={currentPage} />
				</Suspense>
			</main>
		)
	}

	if (params.mediatype === 'tv') {
		return (
			<main className="flex flex-col">
				<Suspense
					key={currentPage}
					fallback={<PostsGridSkeleton grid={true} />}
				>
					<PostsGridTopSeriesPosts currentPage={currentPage} />
				</Suspense>
			</main>
		)
	}
}
