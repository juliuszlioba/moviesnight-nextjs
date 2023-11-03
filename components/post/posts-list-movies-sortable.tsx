import { fetchAllTopPosts } from '@/lib/data'
import { notFound } from 'next/navigation'
import PostsListSortableList from './posts-list-sortable-list'

export default async function PostsListSortableMoviesPosts() {
	const { posts, count } = await fetchAllTopPosts({ list: 'list_movies_top' })

	if (!posts) {
		return notFound()
	}

	return (
		<div className="divide-y-2 divide-dashed">
			<div className="divide-y-2 divide-dashed">
				<PostsListSortableList posts={posts} list={'list_movies_top'} />
			</div>
		</div>
	)
}
