import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import AuthProvider from '@/components/AuthProvider'
import Link from 'next/link'
import Image from 'next/image'
import Login from './login'
import MainNav from './nav'

import type { Database } from '@/types/database.types'

export default async function MaindLayout({
	children,
}: {
	children: React.ReactNode
}) {
	const supabase = createServerComponentClient<Database>({ cookies })

	const {
		data: { session },
	} = await supabase.auth.getSession()

	const accessToken = session?.access_token || null

	return (
		<>
			<AuthProvider accessToken={accessToken}>
				<div className="w-full max-w-screen-lg md:mt-4 2xl:mt-24">
					<nav className="flex items-center justify-between pb-4 pt-2">
						<div className="flex items-center gap-1">
							<div className="w-[26px]">
								<Image
									src="/img/svg/movieNight_logo.svg"
									alt="moviesNight Logo"
									width={26}
									height={26}
									unoptimized={true}
									priority
								/>
							</div>
							<Link
								href="/"
								className="rounded-md p-1.5 text-lg font-light hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 lg:text-xl"
							>
								movies<strong>Night</strong>
							</Link>
						</div>
						<div className="flex w-full items-center justify-end gap-2">
							<MainNav />
							<Login />
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
							<p>
								<a
									href="https://juliuszlioba.com"
									rel="noopener"
									className="ml-2 rounded-full px-2 py-1 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
								>
									{`${new Date().getFullYear()}`} &copy; juliuszlioba.com
								</a>
							</p>
							<Link
								href="/about"
								className="rounded-full px-2 py-1 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
							>
								About
							</Link>
						</div>
					</footer>
				</div>
			</AuthProvider>
		</>
	)
}
