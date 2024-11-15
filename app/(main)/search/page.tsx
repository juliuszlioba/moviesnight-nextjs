import SearchList from '@/components/post/search-list'
import Search from '@/components/search'
import { SearchWebsiteListSkeleton } from '@/components/skeletons'
import { Suspense } from 'react'

export default async function AnimePage(props: {
	searchParams?: Promise<{
		page?: string
		search?: string
	}>
}) {
	const searchParams = await props.searchParams
	const { page } = searchParams || {}
	const currentPage = Number(page) || 1

	return (
		<div className="space-y-4">
			<Search placeholder="Search website" />
			{searchParams?.search && (
				<Suspense
					key={`${searchParams.search}-${currentPage}`}
					fallback={<SearchWebsiteListSkeleton />}
				>
					<SearchList
						searchQuery={searchParams?.search}
						currentPage={currentPage}
					/>
				</Suspense>
			)}
		</div>
	)
}
