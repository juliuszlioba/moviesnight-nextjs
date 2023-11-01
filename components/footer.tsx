import Link from 'next/link'
import Image from 'next/image'

export default function MainFooter() {
	return (
		<footer className="mt-auto space-y-4 p-4">
			<div>
				<Image
					src="/img/svg/movieNight_logo.svg"
					alt="moviesNight Logo"
					width={175}
					height={175}
					className="mx-auto"
					unoptimized={true}
				/>
			</div>

			<div className="flex items-center justify-center gap-4">
				<p>
					<a
						href="https://juliuszlioba.com"
						rel="noopener"
						className="ml-2 rounded-full px-2 py-1 hover:text-primary focus:ring-2 focus:ring-primary focus-visible:outline-none"
					>
						{`${new Date().getFullYear()}`} &copy; juliuszlioba.com
					</a>
				</p>
				<Link
					href="/about"
					className="rounded-full px-2 py-1 hover:text-primary focus:ring-2 focus:ring-primary focus-visible:outline-none"
				>
					About
				</Link>
			</div>
		</footer>
	)
}
