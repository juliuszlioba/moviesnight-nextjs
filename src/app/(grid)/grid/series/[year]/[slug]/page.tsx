import Image from 'next/image'
import Error from '@/components/error'
import { ClockIcon } from '@heroicons/react/24/outline'
import { GetRating } from '@/components/star-rating'

import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import TmdbLink from '@/components/tmdb-link'

export default async function Page({
	params,
}: {
	params: { year: string; slug: string }
}) {
	const supabase = createServerComponentClient<Database>({
		cookies,
	})

	const { data: post } = await supabase
		.from('posts')
		.select('*')
		.eq('year', `${params.year}`)
		.eq('slug', `${params.slug}`)
		.single()

	if (!post) {
		return (
			<div className="flex justify-center">
				<h1>No Posts to show</h1>
			</div>
		)
	}

	const tmdbApiUrl = `https://api.themoviedb.org/3/${post.mediatype}/${post.tmdbid}?api_key=${process.env.TMDB_API_KEY}`

	const postsTmdbData = await fetch(tmdbApiUrl)
		.then((response) => response.json())
		.then((data) => {
			return {
				voteAvarage: data?.vote_average || '',
				runtime: data?.runtime || '',
				overview: data?.overview || '',
				imdbId: data?.imdb_id || '',
				seasons: data?.number_of_seasons || '',
				episodes: data?.number_of_episodes || '',
			}
		})

	return (
		<main className="flex flex-col justify-center">
			<div className="flex flex-col justify-center gap-4 md:flex-row md:gap-8">
				<div className="relative flex shrink-0 flex-col">
					<Image
						src={`https://image.tmdb.org/t/p/w500${post.poster}`}
						alt={post.title || 'poster'}
						width={500}
						height={750}
						className="h-auto w-full shrink-0 overflow-hidden rounded-md border-2 border-gray-900 bg-gray-800 md:h-[750px] md:w-[500px]"
						unoptimized={true}
					/>
				</div>
				<div className="flex flex-col pb-4 md:pb-8">
					<h2 className="flex max-w-xl items-start justify-between gap-2 pt-4 text-2xl md:justify-start md:text-3xl">
						{post?.title}
					</h2>
					<p className="text-sm text-gray-400">{post.year}</p>
					<div className="pt-2 md:pt-8">
						{postsTmdbData?.runtime && (
							<div className="flex items-center gap-1 pb-2 text-gray-400">
								<ClockIcon className="h-5 w-5" width="24" height="24" />{' '}
								{`${postsTmdbData?.runtime} min.`}
							</div>
						)}
						<div className="hidden max-w-xl pb-4 text-lg sm:block">
							{postsTmdbData?.overview}
						</div>
						<div className="flex pb-4">
							{post.mediatype && post.tmdbid && (
								<TmdbLink mediaType={post.mediatype} tmdbId={post.tmdbid} />
							)}
						</div>

						<div className="flex max-w-xl flex-col gap-2 pt-2 md:pt-8">
							{<GetRating rating={post.rating || 0} />}
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
						</div>
					</div>
				</div>
			</div>
		</main>
	)
}
