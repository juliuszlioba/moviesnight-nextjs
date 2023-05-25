import Link from 'next/link'
import { ListBulletIcon, ArrowPathIcon } from '@heroicons/react/24/outline'

export default function Header({
	total = 0,
	session = false,
}: {
	total?: number | null
	session: boolean
}) {
	return (
		<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-gray-800 pb-2">
			<div className="px-1.5">
				Total Anime:{' '}
				<span className="font-semibold text-fuchsia-700">{total}</span>
			</div>
			{session && (
				<Link
					href="/anime/sort"
					className="ml-auto flex items-center gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
				>
					Reorder
					<ArrowPathIcon className="h-6 w-6" width="24" height="24" />
				</Link>
			)}
		</div>
	)
}
