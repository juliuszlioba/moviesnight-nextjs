const { NEXT_PUBLIC_POSTS_LIMIT, NEXT_PUBLIC_POSTS_GRID_LIMIT } = process.env
import Link from 'next/link'

export default function Pagination({
	curentPage,
	totalCount,
	urlPrefix = '',
	grid = false,
}: {
	curentPage: number
	totalCount: number
	urlPrefix?: string | null
	grid?: boolean
}) {
	const postsLimit = grid
		? parseInt(NEXT_PUBLIC_POSTS_GRID_LIMIT as string)
		: parseInt(NEXT_PUBLIC_POSTS_LIMIT as string)
	const lastPage =
		Math.floor(totalCount / postsLimit) + (totalCount % postsLimit > 0 ? 1 : 0)

	const PageButton = ({ number }: { number: number }) => {
		return (
			<Link
				href={`${urlPrefix === '' ? '' : '/' + urlPrefix}/${number}`}
				className="rounded-full border-2 border-transparent px-2 py-1 hover:border-2 hover:bg-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
			>
				{number}
			</Link>
		)
	}

	if (lastPage <= 1) {
		return null
	}

	return (
		<div className="flex w-full justify-between py-8">
			<div>{`Page ${curentPage} of ${lastPage}`}</div>
			<div className="flex items-center gap-2">
				{curentPage > 1 ? (
					<PageButton number={1} />
				) : (
					<p className="rounded-full border-2 border-fuchsia-700 px-2 py-1 text-white">
						1
					</p>
				)}
				{curentPage > 4 && <p>...</p>}
				{curentPage > 3 && <PageButton number={curentPage - 2} />}
				{curentPage > 2 && <PageButton number={curentPage - 1} />}
				{curentPage > 1 && curentPage < lastPage && (
					<p className="rounded-full border-2 border-fuchsia-700 px-2 py-1 text-white">
						{curentPage}
					</p>
				)}
				{curentPage < lastPage - 1 && <PageButton number={curentPage + 1} />}
				{curentPage < lastPage - 2 && <PageButton number={curentPage + 2} />}
				{curentPage < lastPage - 3 && <p>...</p>}

				{curentPage < lastPage ? (
					<PageButton number={lastPage} />
				) : (
					<p className="rounded-full border-2 border-fuchsia-700 px-2 py-1 text-white">
						{lastPage}
					</p>
				)}
			</div>
		</div>
	)
}
