'use client'

import { Dialog, DialogContent, DialogTrigger } from '@/components/ui/dialog'
import { FileEdit, MessageCircle, Search } from 'lucide-react'

import { Button } from '../ui/button'
import Image from 'next/image'
import Link from 'next/link'
import type { Post } from '@/lib/post.types'
import { StarRating } from '@/components/star-rating'
import { Transition } from '@headlessui/react'
import { format } from 'date-fns'
import { useState } from 'react'
import { Session } from '@supabase/auth-helpers-nextjs'

export default function PostsListItem({
	post,
	session = null,
	listRating = false,
	positionInList,
}: {
	post: Post
	session: Session | null
	listRating?: boolean
	positionInList?: number
}) {
	const [reviewOpen, setOpenReview] = useState(false)

	return (
		<>
			<div className="py-4 first:pt-0">
				<div className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between md:gap-6">
					<div className="flex gap-4">
						<div className="relative flex shrink-0 flex-col">
							<Dialog>
								<DialogTrigger>
									<div className="absolute inset-0 flex w-full rounded-lg border-2 border-primary bg-gradient-to-br from-transparent from-60% to-[#000000BF] to-90% opacity-0 bg-blend-multiply duration-300 hover:opacity-100 focus:border-2">
										<div className="absolute -top-2 left-2 rounded-md bg-primary px-2 py-1 text-xs text-white">
											{format(new Date(post.watchedat!), 'yyyy-MM-dd')}
										</div>
										<Search
											strokeWidth={1.5}
											className="absolute bottom-2 right-2 h-8 w-8 text-primary"
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
							<Image
								src={`https://image.tmdb.org/t/p/w200${post.poster}`}
								alt={post.title || 'poster'}
								width={200}
								height={300}
								className="h-52 w-36 shrink-0 overflow-hidden rounded-lg border-2 border-muted bg-muted"
								unoptimized={true}
							/>
						</div>
						<div className="flex w-full flex-col">
							<div className="flex items-start justify-between gap-2 pt-4 md:justify-start">
								<Link
									href={`/${post.mediatype}/${post.year}/${post.slug}`}
									className="rounded-md pt-1 focus:ring-2 focus:ring-primary focus-visible:outline-none"
								>
									<h2 className="text-xl">{post.title}</h2>
								</Link>
								{session && (
									<Link
										href={`/${post.mediatype}/${post.year}/${post.slug}/edit`}
										className="rounded-full p-1 text-muted duration-300 hover:text-primary focus:ring-2 focus:ring-primary focus-visible:outline-none"
									>
										<FileEdit strokeWidth={1.5} className="h-6 w-6" />
									</Link>
								)}
							</div>
							<p className="text-sm text-gray-400">{post.year}</p>

							{listRating && positionInList && (
								<div className="mt-4">
									<span className="rounded-md bg-primary px-2 py-1">
										{positionInList}
									</span>
								</div>
							)}

							{(post.recommendation || post.review) && (
								<div className="mt-auto hidden items-center gap-2 pb-4 md:flex">
									{post.recommendation && (
										<p className={`quate`}>{post.recommendation}</p>
									)}

									{post.review && (
										<Button
											onClick={() => setOpenReview(!reviewOpen)}
											variant={'ghost'}
											className="text-primary"
										>
											<MessageCircle strokeWidth={1.5} className="h-6 w-6" />
											More...
										</Button>
									)}
								</div>
							)}
						</div>
					</div>
					<div className="flex flex-col">
						<StarRating rating={post.rating || 0} />
					</div>
				</div>
				{(post.recommendation || post.review) && (
					<div
						className={`flex items-center justify-between gap-2 pt-2 md:hidden`}
					>
						{post.recommendation && (
							<p className={`quate gap-2`}>{post.recommendation}</p>
						)}
						{post.review && (
							<Button
								onClick={() => setOpenReview(!reviewOpen)}
								variant={'ghost'}
								className="text-primary"
							>
								<MessageCircle strokeWidth={1.5} className="h-6 w-6" />
								More...
							</Button>
						)}
					</div>
				)}

				{post.review && (
					<Transition
						show={reviewOpen}
						enter="transition duration-250 origin-top ease-out"
						enterFrom="transform opacity-0"
						enterTo="transform opacity-100"
						leave="transition duration-150 origin-top ease-out"
						leaveFrom="transform opacity-100"
						leaveTo="transform opacity-0"
					>
						<p className="mt-4 block rounded-md bg-muted px-4 py-3">
							{post.review}
						</p>
					</Transition>
				)}
			</div>
		</>
	)
}
