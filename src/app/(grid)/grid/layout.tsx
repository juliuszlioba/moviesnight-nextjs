import '@/styles/globals.css'

import Link from 'next/link'
import Image from 'next/image'
import { HeartIcon, FilmIcon, TvIcon } from '@heroicons/react/24/outline'

export const metadata = {
	title: 'moviesNight',
	description: 'moviesNight website',
	icons: {
		icon: '/favicon.ico',
		shortcut: '/favicons/favicon.ico',
		apple: '/favicons/apple-touch-icon.png',
	},
}

export default function RootLayout({
	children,
}: {
	children: React.ReactNode
}) {
	return (
		<div className="mt-4 w-full 2xl:mx-8 2xl:mt-24">
			<nav className="flex flex-wrap items-center justify-center gap-2 pb-4 md:justify-between">
				<div className="flex items-center gap-1">
					<div className="w-[26px]">
						<Image
							src="/img/svg/movieNight_logo.svg"
							alt="moviesNight Logo"
							width={26}
							height={26}
							unoptimized={true}
						/>
					</div>
					<Link
						href="/"
						className="rounded-md p-1.5 text-lg font-light hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 lg:text-xl"
					>
						movies<strong>Night</strong>
					</Link>
				</div>

				<div className="flex flex-wrap items-center justify-center gap-x-2 gap-y-1">
					<Link
						href="/grid"
						className="flex gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
					>
						<FilmIcon className="h-6 w-6" width="24" height="24" />
						Recently finished
					</Link>

					<Link
						href="/grid/anime/top"
						className="flex gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
					>
						<HeartIcon className="h-6 w-6" width="24" height="24" />
						Anime Top List
					</Link>

					<Link
						href="/grid/movies/top"
						className="flex gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
					>
						<FilmIcon className="h-6 w-6" width="24" height="24" />
						Movies Top List
					</Link>

					<Link
						href="/grid/series/top"
						className="flex gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
					>
						<TvIcon className="h-6 w-6" width="24" height="24" />
						Series Top List
					</Link>
				</div>
			</nav>
			{children}
		</div>
	)
}
