import { fetchTmdbSearchResults } from '@/lib/data'
import TmdbListItem from './tmdb-list-item'

export default async function TmdbList({
	searchQuery,
}: {
	searchQuery: string | undefined
}) {
	const searchresults =
		(searchQuery && (await fetchTmdbSearchResults({ searchQuery }))) || []

	return (
		<div className="space-y-2">
			<div className="border-b-2 border-dashed border-muted pb-4">
				Search Results for: <span className="font-semibold">{searchQuery}</span>
			</div>
			{searchresults.map((searchItem, index) => {
				return <TmdbListItem key={index} post={searchItem} />
			})}
		</div>
	)
}
