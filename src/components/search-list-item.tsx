'use client'

import type { TMDBresultsEntity } from '@/types/tmdb.types'
import { ReactElement, useState } from 'react'
import Image from 'next/image'
import { useRouter } from 'next/navigation'
import slugify from '@/utils/slugify'
import Loader from './loader'

export default function SearchListItem({
	post,
}: {
	post: TMDBresultsEntity
}): ReactElement {
	const router = useRouter()
	const [loading, setLoading] = useState(false)

	const add = async () => {
		setLoading(true)

		// Submit to API
		fetch('/api/post/add', {
			method: 'POST',
			body: JSON.stringify(post),
		}).then((status) => {
			const mediaType = post.media_type === 'movie' ? 'movies' : 'series'
			const slug = slugify(post.title! || post.name!)
			const year = post.release_date! || post.first_air_date!
			status.ok
				? router.push(`/${mediaType}/${year.substring(0, 4)}/${slug}`)
				: console.log('error')
		})
	}

	return (
		<div className="border-b-2 border-dashed border-gray-800 py-4 first:pt-0 last:border-none">
			<div className="flex items-center justify-between gap-3 md:gap-6">
				<div className="flex gap-3">
					{post.poster_path && (
						<Image
							src={`https://image.tmdb.org/t/p/w200${post.poster_path}`}
							alt={`${post.id}`}
							width={200}
							height={300}
							className="h-36 w-24 shrink-0 overflow-hidden rounded-md border-2 border-gray-900 bg-gray-800"
							unoptimized={true}
						/>
					)}

					<div className="flex flex-col">
						<h2 className={`text-xl ${post.poster_path && 'pt-4'}`}>
							{post.title || post.name}
						</h2>
						<p className="text-sm text-gray-400">
							{post.release_date || post.first_air_date}
						</p>
						<a
							href={`https://www.themoviedb.org/${post.media_type}/${post.id}`}
							target="_blank"
							rel="noreferrer nofolllow"
							className={`mt-auto text-fuchsia-700 hover:text-pink-700 ${
								post.poster_path && 'mb-4'
							}`}
						>
							More
						</a>
					</div>
				</div>
				<div>
					{loading ? (
						<Loader />
					) : (
						<button
							type="submit"
							className="whitespace-nowrap rounded-full border-2 border-fuchsia-800 bg-fuchsia-800 px-4 py-2 text-white hover:bg-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-600"
							onClick={add}
						>
							Add
						</button>
					)}
				</div>
			</div>
		</div>
	)
}
