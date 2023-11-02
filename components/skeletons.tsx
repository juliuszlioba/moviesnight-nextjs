import { Skeleton } from './ui/skeleton'
import { StarRating } from './star-rating'
import { toInt } from 'radash'

const POSTLIMIT = toInt(process.env.NEXT_PUBLIC_POSTS_LIMIT)
const GRIDPOSTLIMIT = toInt(process.env.NEXT_PUBLIC_POSTS_GRID_LIMIT)

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

export function PostsGridItemSkeleton() {
	return (
		<div className="px-1.5 py-3">
			<div className="flex flex-col gap-2">
				<div className="relative flex shrink-0 flex-col">
					<Skeleton className="aspect-[10/15] w-full"></Skeleton>
				</div>
				<div className="flex animate-pulse flex-col">
					<StarRating rating={0} />
				</div>
				<Skeleton className="mt-1 h-4 w-full max-w-[256px]"></Skeleton>
				<Skeleton className="h-4 w-full max-w-[128px]"></Skeleton>
			</div>
		</div>
	)
}

export function PaginationSkeleton() {
	return (
		<div className="flex w-full flex-col items-center gap-4 py-4 sm:flex-row sm:justify-between">
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
	const postsLimit = grid ? GRIDPOSTLIMIT : POSTLIMIT

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

export function SearchWebsiteListSkeleton() {
	const postsLimit = POSTLIMIT

	return (
		<div>
			<div className="flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
				<Skeleton className="h-3.5 w-full max-w-[128px]"></Skeleton>
			</div>
			{[...Array(postsLimit)].map((_, index) => {
				return <PostsListItemSkeleton key={index} />
			})}
			<PaginationSkeleton />
		</div>
	)
}

export function SearchImdbListSkeleton() {
	return (
		<div>
			<div className="flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
				<Skeleton className="h-3.5 w-full max-w-[128px]"></Skeleton>
			</div>
			{[...Array(10)].map((_, index) => {
				return (
					<div
						key={index}
						className="border-b-2 border-dashed border-muted py-4 first:pt-0 last:border-none"
					>
						<div className="flex items-center justify-between gap-3 md:gap-6">
							<div className="flex w-full gap-3">
								<Skeleton className="h-36 w-24"></Skeleton>

								<div className="flex w-full flex-col gap-2">
									<Skeleton className="mt-4 h-5 w-full max-w-[256px]"></Skeleton>
									<Skeleton className="h-3.5 w-full max-w-[128px]"></Skeleton>
									<Skeleton className="mt-6 h-9 w-20"></Skeleton>
								</div>
							</div>
							<Skeleton className="h-10 w-24"></Skeleton>
						</div>
					</div>
				)
			})}
		</div>
	)
}

export function PostsGridSkeleton({ grid = false }: { grid?: boolean }) {
	const postsLimit = grid ? GRIDPOSTLIMIT : POSTLIMIT

	return (
		<div>
			<div className="divide-y-2 divide-dashed">
				<div className="grid grid-cols-2 gap-2 pb-4 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-8 2xl:grid-cols-10">
					{[...Array(postsLimit)].map((_, index) => {
						return <PostsGridItemSkeleton key={index} />
					})}
				</div>
				<PaginationSkeleton />
			</div>
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
