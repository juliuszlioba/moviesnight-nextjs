import Image from 'next/image'
import Link from 'next/link'
import Login from './login'
import { NavPagesDropdown } from './site-header-pages-dropdown'
import AddPost from './site-header-add-post-button'
import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { Database } from '@/lib/database.types'
import { cookies } from 'next/headers'

export default async function SiteHeader() {
	cookies().getAll() // Keep cookies in the JS execution context for Next.js build
	const supabase = createServerComponentClient<Database>({ cookies })
	const {
		data: { session },
	} = await supabase.auth.getSession()

	return (
		<div className="flex items-center justify-between pb-4">
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
			<div className="flex items-center gap-2">
				{session && <AddPost />}
				<NavPagesDropdown />
				<Login />
			</div>
		</div>
	)
}
