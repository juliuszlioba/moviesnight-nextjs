'use client'

import { useSupabase } from '../app/supabase-provider'
import {
	UserCircleIcon,
	ArrowLeftOnRectangleIcon,
} from '@heroicons/react/24/outline'

export function LoginButton() {
	const { supabase } = useSupabase()

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
	const { supabase } = useSupabase()

	const handleLogout = async () => {
		await supabase.auth.signOut()
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
