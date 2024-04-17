import { Suspense } from 'react'
import { PostsListSkeleton } from '@/components/skeletons'
import PageHeader from '@/app/(main)/page-header'
import PostsListAll from '@/components/post/posts-list-all'
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

export default async function Home({
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
		<main>
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

						<h1 className="pt-2 text-2xl">Hey there!</h1>
					</div>
					<p>
						Welcome to my little corner of the internet, where I track my
						watched movies and series.
						<br />
						If you intrested in some top recomendations, jump right into...
					</p>
					<div className="flex flex-wrap gap-2 py-2">
						<Button asChild variant={'default'} className="text-base">
							<Link href="/top/movie">
								<Clapperboard className="mr-1 w-5" />
								<span className="pr-1 font-bold">Movies</span> you must to see
							</Link>
						</Button>
						<Button
							asChild
							variant={'default'}
							className="inline-flex text-base"
						>
							<Link href="/top/tv">
								<Tv className="mr-1 w-5" />
								<span className="pr-1 font-bold">Series</span> you need to binge
							</Link>
						</Button>
						<Button asChild variant={'default'} className="text-base">
							<Link href="/anime">
								<Heart className="mr-1 w-5" />
								<span className="pr-1 font-bold">Anime</span> you should try
							</Link>
						</Button>
					</div>
					<p>
						...or just see what I was watching recently and what I think abaout
						it
					</p>
				</div>
			)}

			<Suspense key={currentPage} fallback={<PostsListSkeleton />}>
				<PageHeader />
				<PostsListAll currentPage={currentPage} />
			</Suspense>
		</main>
	)
}
