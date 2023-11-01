import type { TMDBresultsEntity } from '@/lib/tmdb.types'
import { cn } from '@/lib/utils'
import Image from 'next/image'
import { buttonVariants } from '../ui/button'
import PostAddButton from './button-add'

export default function TmdbListItem({ post }: { post: TMDBresultsEntity }) {
	if (post.media_type === 'tv' || post.media_type === 'movie') {
		return (
			<div className="border-b-2 border-dashed border-muted py-4 first:pt-0 last:border-none">
				<div className="flex items-center justify-between gap-3 md:gap-6">
					<div className="flex gap-3">
						{post.poster_path && (
							<Image
								src={`https://image.tmdb.org/t/p/w200${post.poster_path}`}
								alt={`${post.title || post.name}`}
								width={200}
								height={300}
								className="h-36 w-24 shrink-0 overflow-hidden rounded-md border-2 border-muted bg-muted"
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
							<div className="pt-4">
								<a
									href={`https://www.themoviedb.org/${post.media_type}/${post.id}`}
									target="_blank"
									rel="noreferrer nofolllow"
									className={cn(
										buttonVariants({
											variant: 'outline',
										})
									)}
								>
									More
								</a>
							</div>
						</div>
					</div>
					<PostAddButton post={post} />
				</div>
			</div>
		)
	} else {
		return null
	}
}
