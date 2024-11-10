import { Suspense } from 'react'
import { PostsGridSkeleton } from '@/components/skeletons'
import PostsGridTopMoviesPosts from '@/components/post/posts-grid-movies-top'
import PostsGridTopSeriesPosts from '@/components/post/posts-grid-tv-top'

export default async function GridPage(props: {
	searchParams?: Promise<{
		page?: string
	}>
	params: Promise<{ mediatype: string }>
}) {
	const params = await props.params
	const { page } = (await props.searchParams) || {}
	const currentPage = Number(page) || 1

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
