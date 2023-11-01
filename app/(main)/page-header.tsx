import { LayoutGrid } from 'lucide-react'
import Link from 'next/link'
import { buttonVariants } from '@/components/ui/button'
import { cn } from '@/lib/utils'

export default function PageHeader() {
	return (
		<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
			<div>Recently finished:</div>
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
