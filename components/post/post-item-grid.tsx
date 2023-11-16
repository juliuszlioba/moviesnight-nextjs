import { CalendarCheck, Clock, Search } from 'lucide-react'
import { Dialog, DialogContent, DialogTrigger } from '@/components/ui/dialog'
import { fetchPost, fetchPostMetadata, getAnimeListPostion } from '@/lib/data'

import Image from 'next/image'
import { format, isFuture } from 'date-fns'
import { notFound } from 'next/navigation'
import { toInt } from 'radash'
import TmdbLink from '../tmdb-link'
import { StarRating } from '../star-rating'
import type { Session } from '@supabase/supabase-js'

export default async function PostItem({
	year,
	slug,
	session = null,
}: {
	year: string
	slug: string
	session?: Session | null
}) {
	const { post } = await fetchPost({
		slug: slug,
		year: toInt(year),
	})

	if (!post) {
		notFound()
	}

	//TODO: Error handling
	const { data: metadata } = await fetchPostMetadata({
		mediatype: post?.mediatype!,
		tmdbid: post?.tmdbid!,
	})

	const listposition =
		post.linkanime === true
			? await getAnimeListPostion({
					id: post.id,
			  })
			: null

	return (
		<div className="mb-8">
			<div className="flex flex-col justify-center gap-4 md:flex-row md:gap-8">
				<div className="relative flex shrink-0 flex-col">
					<Dialog>
						<DialogTrigger>
							<div className="absolute inset-0 flex w-full rounded-lg border-2 border-primary opacity-0 duration-300 hover:opacity-100">
								<Search
									strokeWidth={1.5}
									className="absolute bottom-2 right-2 h-8 w-8 text-fuchsia-600"
								/>
							</div>
						</DialogTrigger>
						<DialogContent className="p-0">
							<Image
								src={`https://image.tmdb.org/t/p/w500${post.poster}`}
								alt={post.title || 'poster'}
								width={500}
								height={750}
								className="max-h-screen w-full overflow-hidden rounded-lg bg-muted object-contain"
								unoptimized={true}
							/>
						</DialogContent>
					</Dialog>

					<Image
						src={`https://image.tmdb.org/t/p/w500${post.poster}`}
						alt={post.title || 'poster'}
						width={500}
						height={750}
						className="h-auto w-full shrink-0 overflow-hidden rounded-md border-2 border-muted bg-muted md:h-[750px] md:w-[500px]"
						unoptimized={true}
					/>
				</div>
				<div className="flex flex-col pb-4 md:pb-8">
					<h2 className="flex max-w-xl items-start justify-between gap-2 pt-4 text-2xl md:justify-start md:text-3xl">
						{post?.title}
					</h2>
					<p className="text-sm text-gray-400">{post.year}</p>
					<div className="pt-2 md:pt-8">
						{metadata?.runtime && (
							<div className="flex items-center gap-1 pb-2 text-gray-400">
								<Clock strokeWidth={1.5} className="h-5 w-5" />
								{`${metadata?.runtime} min.`}
							</div>
						)}
						<div className="hidden max-w-xl pb-4 text-lg sm:block">
							{metadata?.overview}
						</div>
						<div className="flex pb-4">
							{post.mediatype && post.tmdbid && (
								<TmdbLink mediaType={post.mediatype} tmdbId={post.tmdbid} />
							)}
						</div>

						<div className="flex max-w-xl flex-col gap-2 pt-2 md:pt-8">
							{<StarRating rating={post.rating || 0} />}
							{post.recommendation && (
								<p className="quate text-lg text-yellow-400">
									{post.recommendation}
								</p>
							)}
							{post.review && (
								<div className="mt-2 border-t-2 border-dashed border-gray-800 pt-4">
									<p className="quate">{post.review}</p>
								</div>
							)}
							{post.watchedat && (
								<div className="mt-6 flex gap-1 border-t-2 border-dashed border-gray-800 pt-4">
									<CalendarCheck strokeWidth={1.5} />
									{isFuture(new Date(post.watchedat))
										? 'Will finish at'
										: 'Last watch'}{' '}
									{format(new Date(post.watchedat), 'yyyy-MM-dd')}
								</div>
							)}
						</div>
					</div>
				</div>
			</div>
		</div>
	)
}
