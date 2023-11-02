import MainFooter from '@/components/footer'
import SiteHeaderGrid from '@/components/site-header-grid'

export default function MainLayout({
	children,
}: {
	children: React.ReactNode
}) {
	return (
		<div className="mx-auto flex min-h-screen w-full flex-col px-3 pt-2 md:px-4 md:pt-8 2xl:pt-24">
			<SiteHeaderGrid />
			{children}
			<MainFooter />
		</div>
	)
}
