export interface TMDBsearchResponse {
	page: number
	results?: TMDBresultsEntity[] | null
	total_pages: number
	total_results: number
}

export interface TMDBresultsEntity {
	adult?: boolean | null
	backdrop_path?: string | null
	genre_ids?: (number | null)[] | null
	id: number
	media_type: string
	original_language: string
	original_title?: string | null
	overview: string
	popularity: number
	poster_path?: string | null
	release_date?: string | null
	title?: string | null
	video?: boolean | null
	vote_average: number
	vote_count: number
	first_air_date?: string | null
	name?: string | null
	origin_country?: string[] | null
	original_name?: string | null
}
