import { ArrowDown01, LayoutGrid } from 'lucide-react'
import Link from 'next/link'
import { buttonVariants } from '@/components/ui/button'
import { cn } from '@/lib/utils'
import { createClient } from '@/utils/supabase/server'
import {
	Tooltip,
	TooltipContent,
	TooltipProvider,
	TooltipTrigger,
} from '@/components/ui/tooltip'

export default async function PageHeader({
	urlPrefix,
}: {
	urlPrefix: 'top/movie' | 'top/tv'
}) {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	return (
		<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
			<div>Highly recommended by me</div>
			<div className="flex gap-2">
				<TooltipProvider>
					<Tooltip>
						<TooltipTrigger asChild>
							<Link href={`/grid/${urlPrefix}`}>
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
								<Link href={`/${urlPrefix}/sort`}>
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
