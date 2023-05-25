import Image from 'next/image'
import Error from '@/components/error'
import { ClockIcon } from '@heroicons/react/24/outline'

import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import TmdbLink from '@/components/tmdb-link'
import PostEdit from '@/components/post-edit'

export default async function Page({
	params,
}: {
	params: { year: string; slug: string }
}) {
	const supabase = createServerComponentClient<Database>({
		cookies,
	})
	const { data, error } = await supabase.auth.getSession()

	if (error) {
		return <Error message="Problem with loading from database" />
	}

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
		<main>
			<div className="flex gap-4">
				<div className="relative flex shrink-0 flex-col">
					<Image
						src={`https://image.tmdb.org/t/p/w200${post.poster}`}
						alt={post.title || 'poster'}
						width={200}
						height={300}
						className="h-[300px] w-[200px] shrink-0 overflow-hidden rounded-md border-2 border-gray-900 bg-gray-800"
						unoptimized={true}
					/>
				</div>
				<div className="flex flex-col">
					<h2 className="flex items-start justify-between gap-2 pt-4 text-2xl md:justify-start">
						{post?.title}
					</h2>
					<p className="text-sm text-gray-400">{post.year}</p>
					<div className="mt-auto">
						{postsTmdbData?.runtime && (
							<div className="flex items-center gap-1 pb-2 text-gray-400">
								<ClockIcon className="h-5 w-5" width="24" height="24" />{' '}
								{`${postsTmdbData?.runtime} min.`}
							</div>
						)}
						<div className="hidden pb-4 sm:block">
							{postsTmdbData?.overview}
						</div>
						<div className="flex pb-4">
							{post.mediatype && post.tmdbid && (
								<TmdbLink mediaType={post.mediatype} tmdbId={post.tmdbid} />
							)}
						</div>
					</div>
				</div>
			</div>
			<div className="pt-2 sm:hidden">{postsTmdbData?.overview}</div>
			<PostEdit post={post} session={data.session ? true : false} />
		</main>
	)
}
