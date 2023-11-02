'use client'

import { Button } from '../ui/button'
import type { Database } from '@/lib/database.types'
import { LogOut } from 'lucide-react'
import { useRouter } from 'next/navigation'
import { createBrowserClient } from '@supabase/ssr'

export default function SignOut() {
	const router = useRouter()
	const supabase = createBrowserClient<Database>(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
	)

	async function handleSignOut() {
		const { error } = await supabase.auth.signOut()

		router.refresh()

		if (error) {
			// eslint-disable-next-line no-console
			console.error('ERROR:', error)
		}
	}

	return (
		<Button onClick={handleSignOut} variant={'ghost'} className="px-3">
			<LogOut strokeWidth={1.5} />
		</Button>
	)
}
