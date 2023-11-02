import { fetchSearchResults } from '@/lib/data'
import PostsListItem from './posts-list-item'
import Pagination from '../pagination'

export default async function SearchList({
	searchQuery,
	currentPage = 1,
}: {
	searchQuery: string | undefined
	currentPage?: number
}) {
	if (!searchQuery) {
		return null
	}

	const { posts, count } = await fetchSearchResults({
		searchQuery: searchQuery,
		curentPage: currentPage,
	})

	return (
		<div className="space-y-2">
			<div className="mb-4 border-b-2 border-dashed border-muted pb-4">
				Search Results for: <span className="font-semibold">{searchQuery}</span>
			</div>

			{!posts ? (
				<div>Nothing found</div>
			) : (
				<>
					<div className="divide-y-2 divide-dashed">
						{posts.map((post, index) => {
							return <PostsListItem key={index} post={post} session={null} />
						})}
					</div>
					<Pagination
						curentPage={currentPage}
						totalCount={count}
						urlPrefix={`search?search=${searchQuery}`}
						samepage={true}
					/>
				</>
			)}
		</div>
	)
}
