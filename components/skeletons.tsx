const { NEXT_PUBLIC_POSTS_LIMIT, NEXT_PUBLIC_POSTS_GRID_LIMIT } = process.env

import { Skeleton } from './ui/skeleton'
import { StarRating } from './star-rating'
import { toInt } from 'radash'

export function PageHeaderSkeleton() {
	return (
		<div className="flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
			<Skeleton className="h-3.5 w-full max-w-[128px]"></Skeleton>
			<Skeleton className="h-10 w-14"></Skeleton>
		</div>
	)
}

export function PostsListItemSkeleton() {
	return (
		<div className="border-b-2 border-dashed border-muted py-4 first:pt-0 last:border-none">
			<div className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between md:gap-6">
				<div className="flex gap-4 md:w-full">
					<div className="relative flex shrink-0 flex-col">
						<Skeleton className="h-52 w-36"></Skeleton>
					</div>
					<div className="flex w-full flex-col gap-2">
						<Skeleton className="mt-4 h-5 w-full max-w-[256px]"></Skeleton>
						<Skeleton className="h-3.5 w-full max-w-[128px]"></Skeleton>
						<div className="quate mt-auto hidden pb-4 md:flex">
							<Skeleton className="h-4 w-full max-w-[128px] pl-6"></Skeleton>
						</div>
					</div>
				</div>
				<div className="flex animate-pulse flex-col">
					<StarRating rating={0} />
				</div>
			</div>
			<div className={`flex items-center justify-between gap-2 pt-2 md:hidden`}>
				<div className="quate w-full">
					<Skeleton className="h-4 w-full pl-6"></Skeleton>
				</div>
			</div>
		</div>
	)
}

export function PaginationSkeleton() {
	return (
		<div className="flex w-full flex-col items-center gap-4 py-8 sm:flex-row sm:justify-between">
			<div className="w-full max-w-[128px] max-sm:hidden">
				<Skeleton className="h-4 w-full pl-6"></Skeleton>
			</div>
			<div className="flex items-center gap-2">
				<Skeleton className="h-9 w-9"></Skeleton>
				<Skeleton className="h-9 w-9"></Skeleton>
				<Skeleton className="h-9 w-9"></Skeleton>
				<p>...</p>
				<Skeleton className="h-9 w-9"></Skeleton>
			</div>
		</div>
	)
}

export function PostsListSkeleton({ grid = false }: { grid?: boolean }) {
	const postsLimit = grid
		? toInt(NEXT_PUBLIC_POSTS_GRID_LIMIT)
		: toInt(NEXT_PUBLIC_POSTS_LIMIT)

	return (
		<div>
			<PageHeaderSkeleton />
			{[...Array(postsLimit)].map((_, index) => {
				return <PostsListItemSkeleton key={index} />
			})}
			<PaginationSkeleton />
		</div>
	)
}

export function PostItemSkeleton() {
	return (
		<>
			<div className="flex gap-4">
				<div className="relative flex shrink-0 flex-col">
					<Skeleton className="h-[300px] w-[200px]"></Skeleton>
				</div>
				<div className="flex w-full flex-col">
					<Skeleton className="mt-4 h-5 w-full max-w-[256px]"></Skeleton>
					<Skeleton className="mt-3 h-3 w-full max-w-[64px]"></Skeleton>
					<div className="mt-auto">
						<div className="hidden pb-4 sm:block">
							<Skeleton className="mt-4 h-3.5 w-full"></Skeleton>
							<Skeleton className="mt-4 h-3.5 w-full"></Skeleton>
							<Skeleton className="mt-4 h-3.5 w-full"></Skeleton>
							<Skeleton className="mt-4 h-3.5 w-full max-w-[256px]"></Skeleton>
						</div>
					</div>
				</div>
			</div>
			<div className="pt-2 sm:hidden">
				<Skeleton className="mt-4 h-3.5 w-full"></Skeleton>
				<Skeleton className="mt-4 h-3.5 w-full"></Skeleton>
				<Skeleton className="mt-4 h-3.5 w-full"></Skeleton>
				<Skeleton className="mt-4 h-3.5 w-full max-w-[256px]"></Skeleton>
			</div>
			<div className="mt-4 flex flex-col gap-4 border-t-2 border-dashed border-muted py-4">
				<StarRating rating={0} />
				<div className="quate mt-auto hidden pb-4 md:flex">
					<Skeleton className="h-4 w-full max-w-[256px] pl-6"></Skeleton>
				</div>
			</div>
		</>
	)
}
