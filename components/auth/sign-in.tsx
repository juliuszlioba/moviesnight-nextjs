'use client'

import { Button } from '../ui/button'
import type { Database } from '@/lib/database.types'
import { UserCircleIcon } from 'lucide-react'
import { createClientComponentClient } from '@supabase/auth-helpers-nextjs'

const SignIn = () => {
	const supabase = createClientComponentClient<Database>()

	async function handleSignIn() {
		const { error } = await supabase.auth.signInWithOAuth({
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
		<Button onClick={handleSignIn} variant={'ghost'} className="py-3">
			<UserCircleIcon className="h-6 w-6" width="24" height="24" />
		</Button>
	)
}

export default SignIn
