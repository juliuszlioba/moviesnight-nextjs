import { Suspense } from 'react'
import { PostsGridSkeleton } from '@/components/skeletons'
import PostsGridAnime from '@/components/post/posts-grid-anime'

export default async function GridPage({
	searchParams,
}: {
	searchParams?: {
		page?: string
	}
}) {
	const currentPage = Number(searchParams?.page) || 1

	return (
		<main className="flex flex-col">
			<Suspense key={currentPage} fallback={<PostsGridSkeleton grid={true} />}>
				<PostsGridAnime currentPage={currentPage} />
			</Suspense>
		</main>
	)
}
