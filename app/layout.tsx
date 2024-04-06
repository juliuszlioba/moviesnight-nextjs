import './styles/globals.css'
//import { createClient } from '@/utils/supabase/server'
import { Analytics } from '@vercel/analytics/react'
import { Quicksand } from 'next/font/google'
//import AuthProvider from '@/components/auth-provider'
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
	return (
		<html
			lang="en"
			className={`${quicksand.variable} dark antialiased`}
			suppressHydrationWarning
		>
			<body>
				{children}
				<Analytics />
			</body>
		</html>
	)
}
