import { Clapperboard, Tv } from 'lucide-react'
import Link from 'next/link'
import { buttonVariants } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import {
	Tooltip,
	TooltipContent,
	TooltipProvider,
	TooltipTrigger,
} from '@/components/ui/tooltip'

export default function PageHeader({ mediatype }: { mediatype: string }) {
	return (
		<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
			<div>
				Recently finished {mediatype === 'movie' ? 'Movies' : 'Series'}:
			</div>
			<div className="flex items-center gap-2">
				<TooltipProvider>
					<Tooltip>
						<TooltipTrigger asChild>
							<Link href="/movie">
								<div
									className={cn(
										buttonVariants({
											variant: 'ghost',
										}),
										'gap-1 px-3'
									)}
								>
									<Clapperboard strokeWidth={1.5} className="h-6 w-6" />
									<span className="max-sm:hidden">Movies</span>
								</div>
							</Link>
						</TooltipTrigger>
						<TooltipContent>
							<p>Show only Movies</p>
						</TooltipContent>
					</Tooltip>
				</TooltipProvider>

				<TooltipProvider>
					<Tooltip>
						<TooltipTrigger asChild>
							<Link href="/tv">
								<div
									className={cn(
										buttonVariants({
											variant: 'ghost',
										}),
										'gap-1 px-3'
									)}
								>
									<Tv strokeWidth={1.5} className="h-6 w-6" />
									<span className="max-sm:hidden">Series</span>
								</div>
							</Link>
						</TooltipTrigger>
						<TooltipContent>
							<p>Show only Series</p>
						</TooltipContent>
					</Tooltip>
				</TooltipProvider>
			</div>
		</div>
	)
}
