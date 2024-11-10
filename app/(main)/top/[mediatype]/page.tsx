import PostsListTopMoviesPosts from '@/components/post/posts-list-movies-top'
import PostsListTopSeriesPosts from '@/components/post/posts-list-tv-top'
import { PostsListSkeleton } from '@/components/skeletons'
import { notFound } from 'next/navigation'
import { Suspense } from 'react'
import PageHeader from './page-header'

export default async function TopPage(props: {
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
			<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
				<PageHeader urlPrefix={'top/movie'} />
				<PostsListTopMoviesPosts currentPage={currentPage} />
			</Suspense>
		)
	}

	if (params.mediatype === 'tv') {
		return (
			<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
				<PageHeader urlPrefix={'top/tv'} />
				<PostsListTopSeriesPosts currentPage={currentPage} />
			</Suspense>
		)
	}

	return notFound()
}
