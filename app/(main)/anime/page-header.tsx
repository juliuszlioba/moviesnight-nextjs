import { LayoutGrid } from 'lucide-react'
import Link from 'next/link'
import { buttonVariants } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import { fetchAnimePostsCount } from '@/lib/data'

export default async function PageHeader() {
	const { count } = await fetchAnimePostsCount()

	return (
		<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
			<div>
				<span className="font-semibold text-primary">{count}</span> finished
				Anime in order of interest.
			</div>
			<Link href="/grid" title="grid view">
				<div
					className={cn(
						buttonVariants({
							variant: 'ghost',
						})
					)}
				>
					<LayoutGrid strokeWidth={1.5} className="h-6 w-6" />
				</div>
			</Link>
		</div>
	)
}
