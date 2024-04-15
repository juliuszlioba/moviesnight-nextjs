import PostsListAnimePosts from '@/components/post/posts-list-anime'
import { PostsListSkeleton } from '@/components/skeletons'
import { Suspense } from 'react'
import PageHeader from './page-header'
import { createClient } from '@/utils/supabase/server'
import { Button } from '@/components/ui/button'
import Link from 'next/link'
import Image from 'next/image'

import {
	Tooltip,
	TooltipContent,
	TooltipProvider,
	TooltipTrigger,
} from '@/components/ui/tooltip'
import { Clapperboard, Heart, Tv } from 'lucide-react'

export default async function AnimePage({
	searchParams,
}: {
	searchParams?: {
		page?: string
	}
}) {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()
	const currentPage = Number(searchParams?.page) || 1

	return (
		<main className="flex flex-col space-y-4">
			{!user && currentPage === 1 && (
				<div className="my-4 ml-8 space-y-1 rounded-md border-2 border-muted bg-muted/50 p-4 md:mb-12 md:ml-14 md:mt-10">
					<div className="-ml-12 flex items-center gap-4 md:-ml-14">
						<TooltipProvider delayDuration={0}>
							<Tooltip>
								<TooltipTrigger asChild>
									<Image
										src="/img/Sakamoto.jpg"
										alt="My Avatar"
										width="512"
										height="512"
										className="w-20 rounded-full border-2 border-muted bg-[#efe8cc]"
									></Image>
								</TooltipTrigger>
								<TooltipContent>
									<span className="font-bold">Meow!</span>
								</TooltipContent>
							</Tooltip>
						</TooltipProvider>

						<div>
							<p>You can find out what Anime I am currently watching on MAL:</p>
							<div className="flex flex-wrap gap-2 pt-2">
								<Button
									asChild
									variant={'default'}
									className="inline-flex gap-1 text-base"
								>
									<a
										target="_blank"
										href="https://myanimelist.net/animelist/TiredSquirrel_"
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
										MyAnimeList
									</a>
								</Button>
							</div>
						</div>
					</div>
				</div>
			)}

			<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
				<PageHeader />
				<PostsListAnimePosts currentPage={currentPage} />
			</Suspense>
		</main>
	)
}
