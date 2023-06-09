import Image from 'next/image'
import { Post } from '@/types/post.types'
import { GetRating } from '@/components/star-rating'
import Link from 'next/link'

import { ChatBubbleOvalLeftIcon } from '@heroicons/react/24/outline'

export default function GridListItem({ post }: { post: Post }) {
	return (
		<Link
			href={
				post.mediatype === 'movie'
					? `/grid/movies/${post.year}/${post.slug}`
					: `/grid/series/${post.year}/${post.slug}`
			}
			className="rounded-lg border-2 border-transparent p-1.5 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
		>
			<div className="space-y-2">
				<div className="">
					<div className="relative h-auto w-full">
						<Image
							src={`https://image.tmdb.org/t/p/w300${post.poster}`}
							alt={post.title || 'poster'}
							width={256}
							height={380}
							className="aspect-[10/15] overflow-hidden rounded-lg object-cover object-bottom"
							unoptimized={true}
						/>
						{/* {(post.recommendation || post.recommended) && (
							<div className="absolute bottom-2 right-2 text-white">
								<ChatBubbleOvalLeftIcon
									className="h-6 w-6"
									width="24"
									height="24"
									strokeWidth={2}
								/>
							</div>
						)} */}
					</div>
				</div>
				<div>
					<GetRating rating={post.rating || 0} />
				</div>
				<h2 className="line-clamp-3">{post.title}</h2>
			</div>
		</Link>
	)
}
