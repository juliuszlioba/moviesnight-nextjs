'use client'

import { createClient } from '@/utils/supabase/client'

import { useEffect } from 'react'
import { useRouter } from 'next/navigation'

const AuthProvider = ({
	accessToken,
	children,
}: {
	accessToken: string | null
	children: React.ReactNode
}) => {
	const supabase = createClient()
	const router = useRouter()

	useEffect(() => {
		const {
			data: { subscription: authListener },
		} = supabase.auth.onAuthStateChange((event, session) => {
			if (session?.access_token !== accessToken) {
				router.refresh()
			}
		})

		return () => {
			authListener?.unsubscribe()
		}
	}, [accessToken, supabase, router])

	return children
}

export default AuthProvider
