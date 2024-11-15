import PostsListAllAnimePosts from '@/components/post/posts-list-anime-all'
import PostsListSortableAnimePosts from '@/components/post/posts-list-anime-sortable'
import {
	PostListSortableListSkeleton,
	PostsListSkeleton,
} from '@/components/skeletons'
import { createClient } from '@/utils/supabase/server'
import { Suspense } from 'react'
import PageHeader from '../page-header'

export default async function AnimeSortPage() {
	const supabase = await createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	return (
		<>
			{!user ? (
				<Suspense fallback={<PostsListSkeleton />}>
					<PageHeader />
					<PostsListAllAnimePosts />
				</Suspense>
			) : (
				<Suspense fallback={<PostListSortableListSkeleton />}>
					<PostsListSortableAnimePosts />
				</Suspense>
			)}
		</>
	)
}
