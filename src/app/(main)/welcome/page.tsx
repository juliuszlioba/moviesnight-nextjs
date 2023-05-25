import Link from 'next/link'
import WelcomeMessage from './message'

export default function Page() {
	return (
		<div className="grid items-center pb-8 text-center">
			<div className="flex flex-col justify-center">
				<div className="pb-4">
					<WelcomeMessage />
				</div>
				<div className="flex justify-center">
					<Link
						href="/"
						className="flex whitespace-nowrap rounded-md border-2 border-fuchsia-800 bg-fuchsia-800 p-2 text-white hover:bg-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-600"
					>
						Continue
					</Link>
				</div>
			</div>
		</div>
	)
}
