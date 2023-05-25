'use client'

import { createClientComponentClient } from '@supabase/auth-helpers-nextjs'
import { useRouter } from 'next/navigation'
import {
	UserCircleIcon,
	ArrowLeftOnRectangleIcon,
} from '@heroicons/react/24/outline'

import type { Database } from '@/types/database.types'

export function LoginButton() {
	//const router = useRouter()
	const supabase = createClientComponentClient<Database>()

	const handleLogin = async () => {
		await supabase.auth.signInWithOAuth({
			provider: 'github',
			options: {
				redirectTo: `${process.env.NEXT_PUBLIC_WEBSITE_URL as string}/welcome`,
			},
		})
	}

	return (
		<>
			<button
				onClick={handleLogin}
				className="rounded-full p-1.5 text-gray-200 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
			>
				<UserCircleIcon className="h-6 w-6" width="24" height="24" />
			</button>
		</>
	)
}

export function LogOutButton() {
	const router = useRouter()
	const supabase = createClientComponentClient<Database>()

	const handleLogout = async () => {
		await supabase.auth.signOut()
		router.refresh()
	}

	return (
		<>
			<button
				onClick={handleLogout}
				className="rounded-full p-1.5 text-gray-200 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
			>
				<ArrowLeftOnRectangleIcon className="h-6 w-6" width="24" height="24" />
			</button>
		</>
	)
}
