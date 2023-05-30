import Link from 'next/link'
import { Squares2X2Icon } from '@heroicons/react/24/outline'

export default function Header() {
	return (
		<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-gray-800 pb-2">
			<div className="px-1.5">Recently finished:</div>
			<Link
				href="/grid"
				className="flex items-center gap-2 rounded-full p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
				title="grid view"
			>
				<Squares2X2Icon className="h-6 w-6" width="24" height="24" />
			</Link>
		</div>
	)
}
