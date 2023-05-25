'use client'

import { ArrowPathIcon } from '@heroicons/react/24/outline'
import { useRouter } from 'next/navigation'

export default function Refresh() {
	const router = useRouter()
	return (
		<button
			onClick={() => router.refresh()}
			className="rounded-full p-1.5 text-gray-800 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
			title="refresh"
		>
			<ArrowPathIcon className="h-6 w-6" width="24" height="24" />
		</button>
	)
}
