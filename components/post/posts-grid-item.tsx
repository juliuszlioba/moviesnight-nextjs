import { Dialog, DialogContent, DialogTrigger } from '@/components/ui/dialog'
import { Search } from 'lucide-react'
import Image from 'next/image'
import Link from 'next/link'
import type { Post } from '@/lib/post.types'
import { StarRating } from '@/components/star-rating'
import { format } from 'date-fns'

export default function PostsGridItem({ post }: { post: Post }) {
	return (
		<>
			<div className="px-1.5 py-3">
				<div className="flex flex-col gap-2">
					<div className="relative flex shrink-0 flex-col">
						<Dialog>
							<DialogTrigger>
								<div className="absolute inset-0 flex w-full rounded-lg border-2 border-primary opacity-0 duration-300 hover:opacity-100 focus:border-2">
									<div className="absolute -top-2 left-2 rounded-md bg-primary px-2 py-1 text-xs text-white">
										{format(new Date(post.watchedat!), 'yyyy-MM-dd')}
									</div>
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
						<div>
							<Image
								src={`https://image.tmdb.org/t/p/w200${post.poster}`}
								alt={post.title || 'poster'}
								width={200}
								height={300}
								className="aspect-[10/15] w-full overflow-hidden rounded-lg border-2 border-muted bg-muted object-cover object-bottom"
								unoptimized={true}
							/>
						</div>
					</div>

					<div className="flex">
						<StarRating rating={post.rating || 0} />
					</div>
					<div>
						<Link
							href={`/${post.mediatype}/${post.year}/${post.slug}`}
							className="flex w-full rounded pt-1 focus:ring-2 focus:ring-primary focus-visible:outline-none"
						>
							<h2 className="line-clamp-3">{post.title}</h2>
						</Link>
					</div>
				</div>
			</div>
		</>
	)
}
