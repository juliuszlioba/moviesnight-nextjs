import MainFooter from '@/components/footer'
import SiteHeader from '@/components/site-header'

export default function MainLayout({
	children,
}: {
	children: React.ReactNode
}) {
	return (
		<div className="mx-auto flex min-h-screen w-full max-w-screen-lg flex-col px-3 pt-2 md:px-4 md:pt-8 2xl:pt-24">
			<SiteHeader />
			{children}
			<MainFooter />
		</div>
	)
}
