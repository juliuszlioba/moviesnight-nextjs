import PostsListSortableMoviesPosts from '@/components/post/posts-list-movies-sortable'
import PostsListSortableSeriesPosts from '@/components/post/posts-list-tv-sortable'
import { PostListSortableListSkeleton } from '@/components/skeletons'
import { createClient } from '@/utils/supabase/server'
import { notFound, redirect } from 'next/navigation'
import { Suspense } from 'react'

export default async function AnimeSortPage(
    props: {
        params: Promise<{ mediatype: string }>
    }
) {
    const params = await props.params;
    const supabase = await createClient()
    const {
		data: { user },
	} = await supabase.auth.getUser()

    if (!user) {
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
