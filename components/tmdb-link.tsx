import { cn } from '@/lib/utils'
import { buttonVariants } from './ui/button'

export default function TmdbLink({
	mediaType,
	tmdbId,
}: {
	mediaType: string
	tmdbId: number
}) {
	let link
	if (mediaType === 'movie') {
		link = `https://www.themoviedb.org/movie/${tmdbId}`
	} else if (mediaType === 'tv') {
		link = `https://www.themoviedb.org/tv/${tmdbId}`
	}
	return (
		<a
			href={link}
			target="_blank"
			rel="noreferrer"
			className={cn(
				buttonVariants({
					variant: 'default',
				})
			)}
		>
			More
		</a>
	)
}
