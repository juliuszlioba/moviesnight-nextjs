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
					<>
						<TooltipProvider>
							<Tooltip>
								<TooltipTrigger asChild>
									<a
										href="https://myanimelist.net/animelist/TiredSquirrel_"
										target="_blank"
									>
										<div
											className={cn(
												buttonVariants({
													variant: 'ghost',
												}),
												'px-3'
											)}
										>
											<svg
												xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 24 24"
												className="h-6 w-6"
												fill="white"
											>
												<path d="M8.273 7.247v8.423l-2.103-.003v-5.216l-2.03 2.404-1.989-2.458-.02 5.285H.001L0 7.247h2.203l1.865 2.545 2.015-2.546 2.19.001zm8.628 2.069.025 6.335h-2.365l-.008-2.871h-2.8c.07.499.21 1.266.417 1.779.155.381.298.751.583 1.128l-1.705 1.125c-.349-.636-.622-1.337-.878-2.082a9.296 9.296 0 0 1-.507-2.179c-.085-.75-.097-1.471.107-2.212a3.908 3.908 0 0 1 1.161-1.866c.313-.293.749-.5 1.1-.687.351-.187.743-.264 1.107-.359a7.405 7.405 0 0 1 1.191-.183c.398-.034 1.107-.066 2.39-.028l.545 1.749H14.51c-.593.008-.878.001-1.341.209a2.236 2.236 0 0 0-1.278 1.92l2.663.033.038-1.81h2.309zm3.992-2.099v6.627l3.107.032-.43 1.775h-4.807V7.187l2.13.03z" />
											</svg>
										</div>
									</a>
								</TooltipTrigger>
								<TooltipContent>
									<p>MyAnimeList</p>
								</TooltipContent>
							</Tooltip>
						</TooltipProvider>

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
					</>
				)}
			</div>
		</div>
	)
}
