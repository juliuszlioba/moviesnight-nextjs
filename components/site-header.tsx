import Image from 'next/image'
import Link from 'next/link'
import Login from './login'
import { NavPagesDropdown } from './site-header-pages-dropdown'
import AddPost from './site-header-add-post-button'
import { createClient } from '@/utils/supabase/server'

export default async function SiteHeader() {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

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
				{user && <AddPost />}
				<NavPagesDropdown />
				<Login />
			</div>
		</div>
	)
}
