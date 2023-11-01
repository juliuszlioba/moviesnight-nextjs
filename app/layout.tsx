import './styles/globals.css'

import AuthProvider from '@/components/auth-provider'
import type { Metadata } from 'next'
import { Quicksand } from 'next/font/google'
import { cookies } from 'next/headers'
import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'

const quicksand = Quicksand({
	subsets: ['latin'],
	variable: '--font-quicksand',
})

export const metadata: Metadata = {
	title: 'moviesNight',
	description: 'moviesNight website',
	icons: {
		icon: '/favicon.ico',
		shortcut: '/favicons/favicon.ico',
		apple: '/favicons/apple-touch-icon.png',
	},
}

export default async function RootLayout({
	children,
}: {
	children: React.ReactNode
}) {
	cookies().getAll() // Keep cookies in the JS execution context for Next.js build
	const supabase = createServerComponentClient({ cookies })

	const {
		data: { session },
	} = await supabase.auth.getSession()

	const accessToken = session?.access_token || null

	return (
		<html
			lang="en"
			className={`${quicksand.variable} dark antialiased`}
			suppressHydrationWarning
		>
			<body>
				<AuthProvider accessToken={accessToken}>{children}</AuthProvider>
			</body>
		</html>
	)
}
