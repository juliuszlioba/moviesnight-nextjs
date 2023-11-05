'use client'

import Image from 'next/image'
import Link from 'next/link'
import { Clapperboard, Heart, List } from 'lucide-react'
import { cn } from '@/lib/utils'
import { buttonVariants } from './ui/button'
import { usePathname } from 'next/navigation'

export default function SiteHeaderGrid() {
	const pathname = usePathname()
	return (
		<div className="grid w-full grid-cols-1 items-center justify-between gap-4 pb-4 lg:grid-cols-2">
			<div className="flex w-full items-center justify-between gap-1 lg:justify-start">
				<div className="flex items-center gap-1">
					<div className="w-[26px]">
						<Image
							src="/img/svg/movieNight_logo.svg"
							alt="moviesNight Logo"
							width={26}
							height={26}
							unoptimized={true}
							priority
						/>
					</div>
					<Link
						href="/grid"
						className="rounded-md p-1.5 text-lg font-light hover:text-primary focus:ring-2 focus:ring-primary lg:text-xl"
					>
						movies<strong>Night</strong>
					</Link>
				</div>
				<Link
					href="/"
					className={cn(
						buttonVariants({
							variant: 'ghost',
						}),
						'px-3 text-base'
					)}
				>
					<List strokeWidth={1.5} className="mr-2 h-6 w-6" />
					List View
				</Link>
			</div>
			<div className="flex w-full flex-wrap items-center justify-center gap-x-2 gap-y-1 sm:justify-end">
				<Link
					href="/grid"
					className={cn(
						buttonVariants({
							variant: pathname === '/grid' ? 'outline' : 'ghost',
						}),
						'px-3 text-base'
					)}
				>
					<Clapperboard strokeWidth={1.5} className="mr-2 h-6 w-6" />
					All
				</Link>
				<Link
					href="/grid/anime"
					className={cn(
						buttonVariants({
							variant: pathname === '/grid/anime' ? 'outline' : 'ghost',
						}),
						'px-3 text-base'
					)}
				>
					<Heart strokeWidth={1.5} className="mr-2 h-6 w-6" />
					Anime
				</Link>
				<Link
					href="/grid/top/movie"
					className={cn(
						buttonVariants({
							variant: pathname === '/grid/top/movie' ? 'outline' : 'ghost',
						}),
						'px-3 text-base'
					)}
				>
					<Clapperboard strokeWidth={1.5} className="mr-2 h-6 w-6" />
					Movies Top
				</Link>
				<Link
					href="/grid/top/tv"
					className={cn(
						buttonVariants({
							variant: pathname === '/grid/top/tv' ? 'outline' : 'ghost',
						}),
						'px-3 text-base'
					)}
				>
					<Clapperboard strokeWidth={1.5} className="mr-2 h-6 w-6" />
					Series Top
				</Link>
			</div>
		</div>
	)
}
