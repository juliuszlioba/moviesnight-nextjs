import { fetchAllTopPosts } from '@/lib/data'
import { notFound } from 'next/navigation'
import PostsSortableList from '@/components/drag-and-drop-sortable-list'

export default async function PostsListSortableSeriesPosts() {
	const { posts, count } = await fetchAllTopPosts({ list: 'list_series_top' })

	if (!posts) {
		return notFound()
	}

	return (
		<div>
			<PostsSortableList posts={posts} list={'list_series_top'} />
		</div>
	)
}
