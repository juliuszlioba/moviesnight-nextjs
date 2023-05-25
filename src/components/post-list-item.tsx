'use client'

import { useState, Fragment } from 'react'
import Image from 'next/image'
//import { Post } from "@/types/post";
import { GetRating } from '@/components/star-rating'
import { format } from 'date-fns'
import { Dialog, Transition } from '@headlessui/react'
import Loader from '@/components/loader'
import Link from 'next/link'
import {
	ChatBubbleLeftIcon,
	PencilSquareIcon,
	MagnifyingGlassIcon,
} from '@heroicons/react/24/outline'

import type { Post } from '@/types/post.types'

export default function ListItem({
	post,
	session = false,
	listRating = false,
	positionInList,
}: {
	post: Post
	session: boolean
	listRating?: boolean
	positionInList?: number
}) {
	const [reviewOpen, setOpenReview] = useState(false)
	const [modalOpen, setModalOpen] = useState(false)

	return (
		<>
			<div className="border-b-2 border-dashed border-gray-800 py-4 first:pt-0 last:border-none">
				<div className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between md:gap-6">
					<div className="flex gap-4">
						<div className="relative flex shrink-0 flex-col">
							<button
								onClick={() => setModalOpen(true)}
								className="absolute h-52 w-36 rounded-lg focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
							>
								<div className="absolute inset-0 flex w-full rounded-lg border-2 border-fuchsia-700 opacity-0 duration-300 hover:opacity-100">
									<div className="absolute -top-2 left-2 rounded-md bg-fuchsia-700 px-2 py-1 text-xs text-white">
										{format(new Date(post.watchedat!), 'yyyy-MM-dd')}
									</div>
									<MagnifyingGlassIcon
										width="24"
										height="24"
										className="absolute bottom-2 right-2 h-8 w-8 text-fuchsia-600"
									/>
								</div>
							</button>
							<Image
								src={`https://image.tmdb.org/t/p/w200${post.poster}`}
								alt={post.title || 'poster'}
								width={200}
								height={300}
								className="h-52 w-36 shrink-0 overflow-hidden rounded-lg border-2 border-gray-900 bg-gray-800"
								unoptimized={true}
							/>
						</div>
						<div className="inset-0 flex w-full flex-col">
							<div className="flex items-start justify-between gap-2 pt-4 md:justify-start">
								<Link
									href={
										post.mediatype === 'movie'
											? `/movies/${post.year}/${post.slug}`
											: `/series/${post.year}/${post.slug}`
									}
									className="rounded-lg focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
								>
									<h2 className="text-xl">{post.title}</h2>
								</Link>
								{session && (
									<Link
										href={
											post.mediatype === 'movie'
												? `/movies/${post.year}/${post.slug}`
												: `/series/${post.year}/${post.slug}`
										}
										className="rounded-lg text-gray-800 duration-300 hover:text-fuchsia-500 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
									>
										<PencilSquareIcon
											className="h-6 w-6"
											width="24"
											height="24"
										/>
									</Link>
								)}
							</div>
							<p className="text-sm text-gray-400">{post.year}</p>

							{listRating && positionInList && (
								<div className="mt-4">
									<span className="rounded-md bg-fuchsia-700 px-2 py-1">
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
										<button
											onClick={() => setOpenReview(!reviewOpen)}
											className="flex items-center gap-1 rounded-md bg-fuchsia-900 px-2 py-1 text-sm text-white hover:bg-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
										>
											<ChatBubbleLeftIcon
												className="h-5 w-5"
												width="24"
												height="24"
											/>{' '}
											More...
										</button>
									)}
								</div>
							)}
						</div>
					</div>
					<div className="flex flex-col">
						<GetRating rating={post.rating || 0} />
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
							<button
								onClick={() => setOpenReview(!reviewOpen)}
								className="flex items-center gap-1 rounded-md bg-fuchsia-900 px-2 py-1 text-sm text-white hover:bg-fuchsia-700"
							>
								<ChatBubbleLeftIcon
									className="h-5 w-5"
									width="24"
									height="24"
								/>{' '}
								More...
							</button>
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
						<p className="mt-4 block rounded-md bg-gray-800 px-4 py-3">
							{post.review}
						</p>
					</Transition>
				)}
			</div>

			<Transition show={modalOpen} as={Fragment}>
				<Dialog
					open={modalOpen}
					onClose={() => setModalOpen(false)}
					className="relative z-50"
				>
					<Transition.Child
						enter="transition duration-150 ease-out"
						enterFrom="transform opacity-0"
						enterTo="transform opacity-100"
						leave="transition duration-100 ease-out"
						leaveFrom="transform opacity-100"
						leaveTo="transform opacity-0"
						as={Fragment}
					>
						<div
							className="fixed inset-0 flex items-center justify-center bg-black/75 backdrop-grayscale"
							aria-hidden="true"
						>
							<Loader />
						</div>
					</Transition.Child>
					<div className="fixed inset-0 flex items-center justify-center p-2">
						<Transition.Child
							enter="transition duration-100 ease-out"
							enterFrom="transform scale-95 opacity-0"
							enterTo="transform scale-100 opacity-100"
							leave="transition duration-75 ease-out"
							leaveFrom="transform scale-100 opacity-100"
							leaveTo="transform scale-95 opacity-0"
							as={Fragment}
						>
							<Dialog.Panel className="mx-auto rounded-md bg-gray-900 leading-none">
								<button
									onClick={() => setModalOpen(false)}
									className="relative"
								>
									<Image
										src={`https://image.tmdb.org/t/p/w500${post.poster}`}
										alt={post.title || 'poster'}
										width={500}
										height={750}
										className="max-h-screen w-full overflow-hidden rounded-lg bg-gray-800 object-contain"
										unoptimized={true}
									/>
								</button>
							</Dialog.Panel>
						</Transition.Child>
					</div>
				</Dialog>
			</Transition>
		</>
	)
}
