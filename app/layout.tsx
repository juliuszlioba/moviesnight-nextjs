import './styles/globals.css'
import supabaseServerClient from '@/lib/supabase'
import { Analytics } from '@vercel/analytics/react'
import { Quicksand } from 'next/font/google'
import AuthProvider from '@/components/auth-provider'
import type { Metadata } from 'next'

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
	const supabase = await supabaseServerClient()

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
				<Analytics />
			</body>
		</html>
	)
}
