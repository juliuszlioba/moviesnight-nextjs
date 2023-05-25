import Link from 'next/link'
import Image from 'next/image'
import Login from './login'
import { MainNav } from './nav'

import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'

import type { Database } from '@/types/database.types'
import Refresh from '@/components/refresh'
import { PlusCircleIcon } from '@heroicons/react/24/outline'

export default async function MaindLayout({
	children,
}: {
	children: React.ReactNode
}) {
	const supabase = createServerComponentClient<Database>({
		cookies,
	})
	const {
		data: { session },
		error,
	} = await supabase.auth.getSession()

	return (
		<main className="w-full max-w-screen-lg md:mt-4 2xl:mt-24">
			<nav className="flex items-center justify-between pb-4 pt-2">
				<div className="flex items-center">
					<Link
						href="/"
						className="rounded-md p-1.5 text-lg font-light hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 lg:text-xl"
					>
						movies<strong>Night</strong>
					</Link>
					<Refresh />
				</div>
				<div className="flex items-center gap-2">
					{session ? (
						<Link
							href="/add"
							className="rounded-full p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
						>
							<PlusCircleIcon className="h-6 w-6" width="24" height="24" />
						</Link>
					) : null}
					<MainNav />
					<Login session={session} />
				</div>
			</nav>
			{children}
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
					<p>{`${new Date().getFullYear()} © juliuszlioba.com`}</p>
					<Link
						href="/about"
						className="rounded-lg p-1 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
					>
						About
					</Link>
				</div>
			</footer>
		</main>
	)
}
