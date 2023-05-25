'use client'

import Link from 'next/link'
import { useSearchParams } from 'next/navigation'

export default function Page() {
	const searchParams = useSearchParams()

	const error = searchParams.get('error')
	const error_description = searchParams.get('error_description')

	return (
		<div className="grid items-center pb-8 text-center">
			{error ? (
				<div className="pb-4">
					<p className="pb-1 text-2xl">{error}</p>
					<p>{error_description}</p>
				</div>
			) : (
				<div className="pb-4">
					<p className="pb-1 text-2xl">I&#39;m in!</p>
					<p>Time for action!</p>
				</div>
			)}
			<div className="flex justify-center">
				<Link
					href="/"
					className="flex whitespace-nowrap rounded-md border-2 border-fuchsia-800 bg-fuchsia-800 p-2 text-white hover:bg-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-600"
				>
					Continue
				</Link>
			</div>
		</div>
	)
}
