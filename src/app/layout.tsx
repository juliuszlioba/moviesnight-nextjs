import '@/styles/globals.css'
import { Quicksand } from 'next/font/google'
import SupabaseProvider from './supabase-provider'

const quicksand = Quicksand({
	subsets: ['latin'],
	variable: '--font-quicksand',
})

export const metadata = {
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
		<html lang="en" className={quicksand.variable}>
			<body className="flex min-h-screen flex-col bg-gray-900 text-white">
				<SupabaseProvider>
					<div className="px-3 2xl:px-1.5">{children}</div>
				</SupabaseProvider>
			</body>
		</html>
	)
}
