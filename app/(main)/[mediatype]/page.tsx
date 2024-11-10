import PostsListAllByMediatype from '@/components/post/posts-list-mediatype'
import { PostsListSkeleton } from '@/components/skeletons'
import { Suspense } from 'react'
import PageHeader from './page-header'

export default async function PostPage(props: {
	params: Promise<{ mediatype: string }>
	searchParams?: Promise<{
		page?: string
	}>
}) {
	const params = await props.params
	const { page } = (await props.searchParams) || {}
	const currentPage = Number(page) || 1

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
