import PostsListAllAnimePosts from '@/components/post/posts-list-anime-all'
import PostsListSortableAnimePosts from '@/components/post/posts-list-anime-sortable'
import {
	PostListSortableListSkeleton,
	PostsListSkeleton,
} from '@/components/skeletons'
import supabaseServerClient from '@/lib/supabase'
import { Suspense } from 'react'
import PageHeader from '../page-header'

export default async function AnimeSortPage() {
	const supabase = await supabaseServerClient()
	const {
		data: { session },
	} = await supabase.auth.getSession()

	return (
		<>
			{session ? (
				<Suspense fallback={<PostListSortableListSkeleton />}>
					<PostsListSortableAnimePosts />
				</Suspense>
			) : (
				<Suspense fallback={<PostsListSkeleton />}>
					<PageHeader />
					<PostsListAllAnimePosts />
				</Suspense>
			)}
		</>
	)
}
