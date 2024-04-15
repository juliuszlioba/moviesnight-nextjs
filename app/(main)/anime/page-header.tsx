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
											{/* MAL icon */}
											<svg
												xmlns="http://www.w3.org/2000/svg"
												data-name="Layer 1"
												viewBox="0 0 24 24"
												className="h-6 w-6"
											>
												<path
													d="M9.5 8.89v6.01H8v-3.73l-1.45 1.72-1.42-1.76v3.77H3.59V8.88h1.57l1.33 1.82 1.44-1.82h1.56Zm6.16 1.48.02 4.52h-1.69v-2.05h-2c.05.36.15.9.3 1.27.11.27.21.54.42.81l-1.22.8c-.25-.45-.44-.95-.63-1.49-.18-.5-.3-1.02-.36-1.56s-.07-1.05.08-1.58c.14-.51.43-.98.83-1.33.22-.21.53-.36.79-.49.25-.13.53-.19.79-.26.28-.07.56-.11.85-.13.28-.02.79-.05 1.71-.02l.39 1.25h-1.97c-.42 0-.63 0-.96.15-.53.25-.89.78-.91 1.37l1.9.02.03-1.29h1.65Zm2.85-1.5v4.73l2.22.02-.31 1.27h-3.43V8.85l1.52.02Z"
													fill="white"
												/>
												<rect
													fill="none"
													strokeWidth={1.25}
													stroke="white"
													width="21.07"
													height="21.07"
													x="1.46"
													y="1.46"
													rx="10.54"
													ry="10.54"
												/>
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
