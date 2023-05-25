export interface Post {
	createdat: string | null
	id: number
	linkanime: boolean | null
	mediatype: string | null
	poster: string | null
	rating: number | null
	recommendation: string | null
	recommended?: boolean | null
	review: string | null
	slug: string
	title: string | null
	tmdbid: number | null
	updatedat: string | null
	watchedat: string | null
	year: number | null
}
