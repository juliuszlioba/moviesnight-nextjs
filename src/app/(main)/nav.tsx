import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'

import { MainNavMenu } from './navMenu'
import Refresh from '@/components/refresh'
import Link from 'next/link'
import { PlusCircleIcon } from '@heroicons/react/24/outline'

export default async function MainNav() {
	const supabase = createServerComponentClient<Database>({ cookies })

	const {
		data: { session },
	} = await supabase.auth.getSession()

	return (
		<>
			{session ? (
				<>
					<Refresh />
					<Link
						href="/add"
						className="ml-auto rounded-full p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
					>
						<PlusCircleIcon className="h-6 w-6" width="24" height="24" />
					</Link>
				</>
			) : null}
			<MainNavMenu />
		</>
	)
}
