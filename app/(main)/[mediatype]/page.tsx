import PostsListAllByMediatype from '@/components/post/posts-list-mediatype'
import { PostsListSkeleton } from '@/components/skeletons'
import { Suspense } from 'react'
import PageHeader from './page-header'

export default async function PostPage({
	params,
	searchParams,
}: {
	params: { mediatype: string }
	searchParams?: {
		page?: string
	}
}) {
	const currentPage = Number(searchParams?.page) || 1

	return (
		<main>
			<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
				<PageHeader mediatype={params.mediatype} />
				<PostsListAllByMediatype
					mediatype={params.mediatype}
					currentPage={currentPage}
				/>
			</Suspense>
		</main>
	)
}
