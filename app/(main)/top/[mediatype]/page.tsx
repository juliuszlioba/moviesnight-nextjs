import PostsListTopMoviesPosts from '@/components/post/posts-list-movies'
import PostsListTopSeriesPosts from '@/components/post/posts-list-tv'
import { PostsListSkeleton } from '@/components/skeletons'
import { notFound } from 'next/navigation'
import { Suspense } from 'react'

export default async function AnimePage({
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
			<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
				<PostsListTopMoviesPosts currentPage={currentPage} />
			</Suspense>
		)
	}

	if (params.mediatype === 'tv') {
		return (
			<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
				<PostsListTopSeriesPosts currentPage={currentPage} />
			</Suspense>
		)
	}

	return notFound()
}
