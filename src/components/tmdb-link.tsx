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
			className="rounded-md bg-fuchsia-800 px-5 py-2 text-white hover:bg-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
		>
			More
		</a>
	)
}
