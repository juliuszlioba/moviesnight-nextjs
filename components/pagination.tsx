const POSTLIMIT = toInt(process.env.NEXT_PUBLIC_POSTS_LIMIT)
const GRIDPOSTLIMIT = toInt(process.env.NEXT_PUBLIC_POSTS_GRID_LIMIT)

import Link from 'next/link'
import { toInt } from 'radash'
import { Button } from './ui/button'

export default function Pagination({
	curentPage,
	totalCount,
	urlPrefix = '',
	samepage = false,
	grid = false,
}: {
	curentPage: number
	totalCount: number
	urlPrefix?: string | null
	samepage?: boolean
	grid?: boolean
}) {
	const postsLimit = grid ? GRIDPOSTLIMIT : POSTLIMIT
	const lastPage =
		Math.floor(totalCount / postsLimit) + (totalCount % postsLimit > 0 ? 1 : 0)

	const PageButton = ({ number }: { number: number }) => {
		return (
			<Link
				href={`${urlPrefix === '' ? '' : '/' + urlPrefix}${
					samepage ? '&' : '/?'
				}page=${number}`}
			>
				<Button variant={'outline'} size={'sm'}>
					{number}
				</Button>
			</Link>
		)
	}

	if (lastPage <= 1) {
		return null
	}

	if (totalCount <= postsLimit) {
		return null
	}

	return (
		<div className="flex w-full flex-col items-center gap-4 py-4 sm:flex-row sm:justify-between">
			<div className="max-sm:hidden">{`Page ${curentPage} of ${lastPage}`}</div>
			<div className="flex items-center gap-2">
				{curentPage > 1 ? (
					<PageButton number={1} />
				) : (
					<Button variant={'default'} size={'sm'}>
						1
					</Button>
				)}
				{curentPage > 4 && <p>...</p>}
				{curentPage > 3 && <PageButton number={curentPage - 2} />}
				{curentPage > 2 && <PageButton number={curentPage - 1} />}
				{curentPage > 1 && curentPage < lastPage && (
					<Button variant={'default'} size={'sm'}>
						{curentPage}
					</Button>
				)}
				{curentPage < lastPage - 1 && <PageButton number={curentPage + 1} />}
				{curentPage < lastPage - 2 && <PageButton number={curentPage + 2} />}
				{curentPage < lastPage - 3 && <p>...</p>}

				{curentPage < lastPage ? (
					<PageButton number={lastPage} />
				) : (
					<Button size={'sm'}>{lastPage}</Button>
				)}
			</div>
		</div>
	)
}
