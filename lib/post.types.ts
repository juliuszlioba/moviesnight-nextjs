import * as z from 'zod'

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

export const Post = z.object({
	createdat: z.string(),
	id: z.number(),
	linkanime: z.boolean(),
	mediatype: z.string(),
	poster: z.string(),
	rating: z.number(),
	recommendation: z.string(),
	recommended: z.boolean(),
	review: z.string(),
	slug: z.string(),
	title: z.string(),
	tmdbid: z.number(),
	updatedat: z.string(),
	watchedat: z.string(),
	year: z.number(),
})

export const PostEditFormSchema = z.object({
	id: z.number().readonly(),
	rating: z.string(),
	recommendation: z.string(),
	review: z.string(),
	linkanime: z.boolean(),
	recommended: z.boolean(),
	watchedAt: z.date(),
})
