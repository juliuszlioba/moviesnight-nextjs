import { Suspense } from 'react'
import { PostsListSkeleton } from '@/components/skeletons'
import PageHeader from '@/app/(main)/page-header'
import PostsList from '@/components/post/posts-list'

export default async function Home({
	searchParams,
}: {
	searchParams?: {
		page?: string
	}
}) {
	const currentPage = Number(searchParams?.page) || 1

	return (
		<main className="flex flex-col">
			<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
				<PageHeader />
				<PostsList currentPage={currentPage} />
			</Suspense>
		</main>
	)
}
