import { ArrowDown01, LayoutGrid } from 'lucide-react'
import Link from 'next/link'
import { buttonVariants } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import { fetchAnimePostsCount } from '@/lib/data'
import {
	Tooltip,
	TooltipContent,
	TooltipProvider,
	TooltipTrigger,
} from '@/components/ui/tooltip'
import { createClient } from '@/utils/supabase/server'

export default async function PageHeader() {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()
	const { count } = await fetchAnimePostsCount()

	return (
		<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
			<div>
				<span className="font-semibold text-primary">{count}</span> finished
				Anime in order of interest.
			</div>
			<div className="flex gap-2">
				<TooltipProvider>
					<Tooltip>
						<TooltipTrigger asChild>
							<Link href="/grid/anime">
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
				{user && (
					<TooltipProvider>
						<Tooltip>
							<TooltipTrigger asChild>
								<Link href="/anime/sort">
									<div
										className={cn(
											buttonVariants({
												variant: 'ghost',
											}),
											'px-3'
										)}
									>
										<ArrowDown01 strokeWidth={1.5} className="h-6 w-6" />
									</div>
								</Link>
							</TooltipTrigger>
							<TooltipContent>
								<p>Sort</p>
							</TooltipContent>
						</Tooltip>
					</TooltipProvider>
				)}
			</div>
		</div>
	)
}
