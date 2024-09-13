'use client'

import { Button } from '../ui/button'
import type { Database } from '@/lib/database.types'
import { UserCircleIcon } from 'lucide-react'
import { createBrowserClient } from '@supabase/ssr'
import { useRouter } from 'next/navigation'

const SignIn = () => {
	const supabase = createBrowserClient<Database>(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
	)
	const router = useRouter()

	async function handleSignIn() {
		const { data, error } = await supabase.auth.signInWithOAuth({
			provider: 'github',
			options: {
				redirectTo: `${process.env.NEXT_PUBLIC_WEBSITE_URL as string}/welcome`,
			},
		})

		if (error) {
			// eslint-disable-next-line no-console
			console.error('ERROR:', error)
		}
	}

	return (
		<Button onClick={handleSignIn} variant={'ghost'} className="px-3 py-3">
			<UserCircleIcon
				className="h-6 w-6"
				width="24"
				height="24"
				strokeWidth={1.5}
			/>
		</Button>
	)
}

export default SignIn
