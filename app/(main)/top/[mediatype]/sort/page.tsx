import PostsListSortableMoviesPosts from '@/components/post/posts-list-movies-sortable'
import PostsListSortableSeriesPosts from '@/components/post/posts-list-tv-sortable'
import { PostListSortableListSkeleton } from '@/components/skeletons'
import supabaseServerClient from '@/lib/supabase'
import { notFound, redirect } from 'next/navigation'
import { Suspense } from 'react'
//import PageHeader from './page-header'

export default async function AnimeSortPage({
	params,
}: {
	params: { mediatype: string }
}) {
	const supabase = await supabaseServerClient()
	const {
		data: { session },
	} = await supabase.auth.getSession()

	if (!session) {
		redirect('/')
	}

	if (params.mediatype === 'movie') {
		return (
			<>
				<Suspense fallback={<PostListSortableListSkeleton />}>
					<PostsListSortableMoviesPosts />
				</Suspense>
			</>
		)
	}

	if (params.mediatype === 'tv') {
		return (
			<Suspense fallback={<PostListSortableListSkeleton />}>
				<PostsListSortableSeriesPosts />
			</Suspense>
		)
	}

	return notFound()
}
