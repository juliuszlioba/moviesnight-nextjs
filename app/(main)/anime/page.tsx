import PostsListAnimePosts from '@/components/post/posts-list-anime'
import { PostsListSkeleton } from '@/components/skeletons'
import { Suspense } from 'react'
import PageHeader from './page-header'

export default async function AnimePage({
	searchParams,
}: {
	searchParams?: {
		page?: string
	}
}) {
	const currentPage = Number(searchParams?.page) || 1

	return (
		<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
			<PageHeader />
			<PostsListAnimePosts currentPage={currentPage} />
		</Suspense>
	)
}
