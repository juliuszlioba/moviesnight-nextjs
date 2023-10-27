import '@/styles/globals.css'
import { Quicksand } from 'next/font/google'

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

// Prevent default cache method, overwise error during build
export const dynamic = 'force-dynamic'

export default function RootLayout({
	children,
}: {
	children: React.ReactNode
}) {
	return (
		<html lang="en" className={quicksand.variable} suppressHydrationWarning>
			<body className="flex min-h-screen flex-col bg-gray-900 text-white">
				<div className="flex w-full justify-center px-3 2xl:px-1.5">
					{children}
				</div>
			</body>
		</html>
	)
}
