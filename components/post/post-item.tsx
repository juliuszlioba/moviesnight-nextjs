import { CalendarCheck, Clock, FileEdit, Search, Trash } from 'lucide-react'
import { Dialog, DialogContent, DialogTrigger } from '@/components/ui/dialog'
import { fetchPost, fetchPostMetadata, getAnimeListPostion } from '@/lib/data'

import Image from 'next/image'
import { format, isFuture } from 'date-fns'
import { notFound } from 'next/navigation'
import { toInt } from 'radash'
import TmdbLink from '../tmdb-link'
import { StarRating } from '../star-rating'
import { cn } from '@/lib/utils'
import { Button, buttonVariants } from '../ui/button'
import Link from 'next/link'
import type { Session } from '@supabase/supabase-js'

import {
	AlertDialog,
	AlertDialogCancel,
	AlertDialogContent,
	AlertDialogDescription,
	AlertDialogFooter,
	AlertDialogHeader,
	AlertDialogTitle,
	AlertDialogTrigger,
} from '@/components/ui/alert-dialog'
import PostDeleteButton from './button-delete'
import EditPostPosition from './post-list-item-top-position'

export default async function PostItem({
	year,
	slug,
	session = null,
}: {
	year: string
	slug: string
	session?: Session | null
}) {
	const { post } = await fetchPost({
		slug: slug,
		year: toInt(year),
	})

	if (!post) {
		notFound()
	}

	//TODO: Error handling
	const { data: metadata } = await fetchPostMetadata({
		mediatype: post?.mediatype!,
		tmdbid: post?.tmdbid!,
	})

	const listposition =
		post.linkanime === true
			? await getAnimeListPostion({
					id: post.id,
			  })
			: null

	return (
		<>
			<div className="flex gap-4">
				<div className="relative flex shrink-0 flex-col">
					<Dialog>
						<DialogTrigger>
							<div className="absolute inset-0 flex w-full rounded-lg border-2 border-primary opacity-0 duration-300 hover:opacity-100">
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

					{post?.poster && (
						<Image
							src={`https://image.tmdb.org/t/p/w200${post.poster}`}
							alt={post?.title || 'poster'}
							width={200}
							height={300}
							className="h-[300px] w-[200px] shrink-0 overflow-hidden rounded-md border-2 border-gray-900 bg-gray-800"
							unoptimized={true}
						/>
					)}
				</div>
				<div className="flex flex-col">
					<h2 className="flex items-start justify-between gap-2 pt-4 text-2xl md:justify-start">
						{post?.title}
					</h2>
					<p className="mb-6 text-sm text-gray-400">
						{post?.year && post.year}
					</p>
					<div className="mt-auto">
						{metadata?.runtime && (
							<div className="flex items-center gap-1 pb-2 text-gray-400">
								<Clock strokeWidth={1.5} className="h-5 w-5" />
								{`${metadata?.runtime} min.`}
							</div>
						)}
						<div className="hidden space-y-2 pb-4 sm:block">
							<p>{metadata?.overview}</p>
							<div className="flex">
								{post.mediatype && post.tmdbid && (
									<TmdbLink mediaType={post.mediatype} tmdbId={post.tmdbid} />
								)}
							</div>
						</div>
					</div>
				</div>
			</div>
			<div className="space-y-2 py-2 sm:hidden">
				<p>{metadata?.overview}</p>
				<div className="flex">
					{post.mediatype && post.tmdbid && (
						<TmdbLink mediaType={post.mediatype} tmdbId={post.tmdbid} />
					)}
				</div>
			</div>

			<div className="mt-4 flex flex-col gap-4 border-t-2 border-dashed border-muted py-4">
				{<StarRating rating={post.rating || 0} />}
				{post.recommendation && (
					<p className="quate text-lg text-yellow-400">{post.recommendation}</p>
				)}
				{post.review && (
					<div className="border-t-2 border-dashed border-muted pt-4">
						<p className="quate">{post.review}</p>
					</div>
				)}

				{post.linkanime && listposition && (
					<div className="flex items-center justify-between gap-8 border-t-2 border-dashed border-muted pt-4">
						<div className="flex items-center gap-2">
							<span className="rounded-md bg-primary px-2 py-0.5">
								{listposition}
							</span>
							in Anime Top List
						</div>

						{session && (
							<EditPostPosition
								id={post.id}
								listposition={listposition}
								list={'list_anime_top'}
							/>
						)}
					</div>
				)}
			</div>

			<div className="flex items-center justify-between border-t-2 border-dashed border-muted py-4">
				{post.watchedat && (
					<div className="flex gap-2">
						<CalendarCheck strokeWidth={1.5} />
						{isFuture(new Date(post.watchedat))
							? 'Will finish at'
							: 'Last watch'}{' '}
						{format(new Date(post.watchedat), 'yyyy-MM-dd')}
					</div>
				)}

				{session && (
					<div className="flex gap-2">
						<AlertDialog>
							<AlertDialogTrigger asChild>
								<Button
									variant={'ghost'}
									className="gap-2 text-red-500 text-opacity-40"
								>
									<Trash strokeWidth={1.5} />
									Delete
								</Button>
							</AlertDialogTrigger>
							<AlertDialogContent>
								<AlertDialogHeader>
									<AlertDialogTitle>Are you absolutely sure?</AlertDialogTitle>
									<AlertDialogDescription>
										This action cannot be undone. This will{' '}
										<span className="text-red-500">permanently</span> delete
										Post.
									</AlertDialogDescription>
								</AlertDialogHeader>
								<AlertDialogFooter className="flex items-center">
									<AlertDialogCancel>Cancel</AlertDialogCancel>
									<PostDeleteButton
										id={post.id}
										postMeta={{
											mediaType: post.mediatype,
											linkanime: post.linkanime,
											recommended: post.recommended,
										}}
									/>
								</AlertDialogFooter>
							</AlertDialogContent>
						</AlertDialog>

						<Link
							href={`/${post.mediatype}/${post.year}/${post.slug}/edit`}
							className={cn(
								buttonVariants({
									variant: 'ghost',
								}),
								'gap-2'
							)}
						>
							<FileEdit strokeWidth={1.5} className="h-6 w-6" /> Edit
						</Link>
					</div>
				)}
			</div>
		</>
	)
}
