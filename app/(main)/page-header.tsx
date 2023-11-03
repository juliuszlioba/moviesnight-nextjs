import { LayoutGrid } from 'lucide-react'
import Link from 'next/link'
import { buttonVariants } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import {
	Tooltip,
	TooltipContent,
	TooltipProvider,
	TooltipTrigger,
} from '@/components/ui/tooltip'

export default function PageHeader() {
	return (
		<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
			<div>Recently finished:</div>
			<TooltipProvider>
				<Tooltip>
					<TooltipTrigger asChild>
						<Link href="/grid">
							<div
								className={cn(
									buttonVariants({
										variant: 'ghost',
									}),
									'px-3'
								)}
							>
								<LayoutGrid strokeWidth={1.5} className="h-6 w-6" />
							</div>
						</Link>
					</TooltipTrigger>
					<TooltipContent>
						<p>Grid View</p>
					</TooltipContent>
				</Tooltip>
			</TooltipProvider>
		</div>
	)
}
