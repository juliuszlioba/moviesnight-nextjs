'use client'

import { useState, useEffect } from 'react'
import {
	TrashIcon,
	ArrowDownCircleIcon,
	XCircleIcon,
	PencilSquareIcon,
	PlusCircleIcon,
} from '@heroicons/react/24/outline'
import { GetRating } from '@/components/star-rating'
import { useRouter } from 'next/navigation'

import { format } from 'date-fns'
import { DayPicker } from 'react-day-picker'
import '../styles/react-day-picker.css'

interface Update {
	id: number
	rating: number | null
	recommendation: string | null
	review: string | null
	watchedat: Date | null
}

import type { Post } from '@/types/post.types'
import Loader from './loader'

export default function PostEdit({
	session = false,
	post,
}: {
	session?: boolean
	post: Post
}) {
	const router = useRouter()
	const [loading, setLoading] = useState(false)
	const [confirmDelete, setConfirmDelete] = useState(false)

	const [openEdit, setOpenEdit] = useState(false)
	const [rating, setRating] = useState(post.rating)
	const [recommendation, setRecommendation] = useState(post.recommendation)
	const [review, setReview] = useState(post.review)

	const [linkingAnime, setLinkingAnime] = useState(post.linkanime)
	const [sortOrder, setSortOrder] = useState(0)

	const [openChangeDate, setOpenChangeDate] = useState(false)
	const [watchedAt, setWatchedAt] = useState<any>(new Date(post.watchedat!)) // !

	const handleRatingChange = (e: React.ChangeEvent<HTMLSelectElement>) => {
		setRating(parseInt(e.target.value))
	}

	const handleRecommendationChange = (
		e: React.ChangeEvent<HTMLInputElement>
	) => {
		setRecommendation(e.target.value)
	}

	const handleReviewChange = (e: React.ChangeEvent<HTMLTextAreaElement>) => {
		setReview(e.target.value)
	}

	async function handleAddToAnimeList() {
		setLoading(true)
		fetch(`/api/post/top/list_anime_top/${post.id}`, {
			method: 'POST',
		}).then((status) => {
			if (status.ok) {
				router.refresh()
				setLinkingAnime(true)
				setLoading(false)
			} else {
				console.log('Error')
				setLoading(false)
			}
		})
	}

	async function handleAddToMoviesList() {
		setLoading(true)
		fetch(`/api/post/top/list_movies_top/${post.id}`, {
			method: 'POST',
		}).then((status) => {
			if (status.ok) {
				router.refresh()
				setLoading(false)
			} else {
				console.log('Error')
				setLoading(false)
			}
		})
	}

	async function handleAddToSeriesList() {
		setLoading(true)
		fetch(`/api/post/top/list_series_top/${post.id}`, {
			method: 'POST',
		}).then((status) => {
			if (status.ok) {
				router.refresh()
				setLoading(false)
			} else {
				console.log('Error')
				setLoading(false)
			}
		})
	}

	async function handleChangeInAnimeList() {
		setLoading(true)
		fetch(`/api/post/top/list_anime_top/${post.id}/${sortOrder - 1}`, {
			method: 'PUT',
		}).then((status) => {
			if (status.ok) {
				router.refresh()
				setLoading(false)
			} else {
				console.log('Error')
				setLoading(false)
			}
		})
	}

	async function handleRemoveFromAnimeList() {
		setLoading(true)
		fetch(`/api/post/top/list_anime_top/${post.id}`, {
			method: 'DELETE',
		}).then((status) => {
			if (status.ok) {
				router.refresh()
				setLinkingAnime(false)
				setLoading(false)
			} else {
				console.log('Error')
				setLoading(false)
			}
		})
	}

	async function handleRemoveFromMoviesList() {
		setLoading(true)
		fetch(`/api/post/top/list_movies_top/${post.id}`, {
			method: 'DELETE',
		}).then((status) => {
			if (status.ok) {
				router.refresh()
				setLoading(false)
			} else {
				console.log('Error')
				setLoading(false)
			}
		})
	}

	async function handleRemoveFromSeriesList() {
		setLoading(true)
		fetch(`/api/post/top/list_series_top/${post.id}`, {
			method: 'DELETE',
		}).then((status) => {
			if (status.ok) {
				router.refresh()
				setLoading(false)
			} else {
				console.log('Error')
				setLoading(false)
			}
		})
	}

	async function handleUpdate() {
		setLoading(true)
		let updates: Update = {
			id: post.id!,
			rating: rating != post.rating ? rating : post.rating,
			recommendation:
				recommendation != post.recommendation
					? recommendation
					: post.recommendation,
			review: review != post.review ? review : post.review,
			watchedat: watchedAt != post.watchedat ? watchedAt : post.watchedat,
		}

		fetch('/api/post/update', {
			method: 'POST',
			body: JSON.stringify({ ...updates }),
		}).then((status) => {
			if (status.ok) {
				router.refresh()
				setLoading(false)
				setOpenEdit(false)
			} else {
				console.log('Error')
				setLoading(false)
				setOpenEdit(false)
			}
		})
	}

	async function handleDelete() {
		setLoading(true)

		fetch('/api/post/delete', {
			method: 'POST',
			body: JSON.stringify({ id: post.id }),
		}).then((status) => {
			status.ok ? router.push('/') : console.log('error')
			setLoading(false)
		})
	}

	async function getAnimeListPostion() {
		fetch(`/api/post/top/list_anime_top/${post.id}`, {
			method: 'GET',
		})
			.then((response) => response.json())
			.then((data) => {
				if ((data.status = 'success')) {
					setSortOrder(data.position)
				}
			})
	}

	const handleDateChange = (date: Date | undefined) => {
		if (date) {
			setWatchedAt(date)
		}
	}

	useEffect(() => {
		if (linkingAnime) {
			getAnimeListPostion()
		}
		// eslint-disable-next-line react-hooks/exhaustive-deps
	}, [linkingAnime])

	if (loading) {
		return (
			<div className="flex justify-center p-4">
				<Loader />
			</div>
		)
	}

	return (
		<>
			{openEdit ? (
				<>
					<div className="mt-4 space-y-2 border-t-2 border-dashed border-gray-800 py-4">
						<select
							className="w-full rounded border-2 p-2 text-black focus:border-fuchsia-900 focus:outline-none focus:ring-2 focus:ring-fuchsia-800 dark:border-fuchsia-800 dark:bg-gray-800 dark:text-white"
							defaultValue={rating!} //!
							onChange={handleRatingChange}
						>
							<option value="0">No rating</option>
							<option value="10">10 - Masterpiece</option>
							<option value="9">9 - Great</option>
							<option value="8">8 - Good</option>
							<option value="7">7 - Fine</option>
							<option value="6">6 - Mediocre</option>
							<option value="5">5 - Could be better</option>
							<option value="4">4 - Forgetable</option>
							<option value="3">3 - Just Bad</option>
							<option value="2">2 - Waste of time</option>
							<option value="1">1 - Total garbage</option>
						</select>

						<input
							type="text"
							className="w-full rounded border-2 p-2 text-black focus:border-fuchsia-900 focus:outline-none focus:ring-2 focus:ring-fuchsia-800 dark:border-fuchsia-800 dark:bg-gray-800 dark:text-white"
							id="recommendation"
							value={recommendation || ''}
							onChange={handleRecommendationChange}
						></input>

						<textarea
							className="w-full rounded border-2 p-2 text-black focus:border-fuchsia-900 focus:outline-none  focus:ring-2 focus:ring-fuchsia-800 dark:border-fuchsia-800 dark:bg-gray-800 dark:text-white"
							id="review"
							value={review || ''}
							rows={3}
							onChange={handleReviewChange}
						></textarea>

						<div className="flex items-center gap-1 pb-2">
							Finished at{' '}
							<span className="font-semibold text-fuchsia-600">
								{format(watchedAt, 'PP')}
							</span>
							<button
								className="hover:text-fuchsia-800"
								onClick={() => setOpenChangeDate(!openChangeDate)}
							>
								<PencilSquareIcon className="h-6 w-6" width="24" height="24" />
							</button>
						</div>
						{openChangeDate && (
							<div className="flex pb-2">
								<div className="rounded border-2 border-fuchsia-800 bg-gray-800 p-2">
									<DayPicker
										mode="single"
										today={watchedAt}
										selected={watchedAt}
										onSelect={handleDateChange}
									/>
								</div>
							</div>
						)}

						{linkingAnime ? (
							<div className="flex gap-2 border-t-2 border-dashed border-gray-800 pt-4">
								{/*
								//! BUG: Anime soring bug
								 <input
									type="number"
									className="w-20 rounded border-2 p-2 text-black focus:border-fuchsia-900 focus:outline-none focus:ring-2 focus:ring-fuchsia-800 dark:border-fuchsia-800 dark:bg-gray-800 dark:text-white"
									value={sortOrder}
									onChange={(e) => setSortOrder(parseInt(e.target.value))}
								></input>
								<button
									className="rounded-full bg-fuchsia-800 px-5 py-1 text-white hover:bg-pink-800 focus:outline-none focus:ring-2 focus:ring-pink-800"
									onClick={handleChangeInAnimeList}
								>
									Set
								</button> */}
								<div className="ml-auto flex items-center gap-1">
									Remove from Anime list
									<button
										className="text-yellow-700 hover:text-pink-800"
										onClick={handleRemoveFromAnimeList}
									>
										<TrashIcon className="h-6 w-6" width="24" height="24" />
									</button>
								</div>
							</div>
						) : (
							<div className="mb-4 flex items-center justify-between gap-2">
								<button
									className="ml-auto flex items-center gap-1 rounded-full p-1 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
									onClick={handleAddToAnimeList}
								>
									<PlusCircleIcon className="h-6 w-6" width="24" height="24" />
									Anime
								</button>
							</div>
						)}
					</div>

					{!linkingAnime && post.mediatype === 'movie' ? (
						<div className="mb-4 flex items-center justify-between gap-2 border-t-2 border-dashed border-gray-800 pt-4">
							{!post.recommended ? (
								<button
									className="ml-auto flex items-center gap-1 rounded-full p-1 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
									onClick={handleAddToMoviesList}
								>
									<PlusCircleIcon className="h-6 w-6" width="24" height="24" />
									Recomended Movie
								</button>
							) : (
								<button
									className="ml-auto flex items-center gap-1 rounded-full p-1 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
									onClick={handleRemoveFromMoviesList}
								>
									<TrashIcon className="h-6 w-6" width="24" height="24" />
									Remove recomendation
								</button>
							)}
						</div>
					) : null}

					{!linkingAnime && post.mediatype === 'tv' ? (
						<div className="mb-4 flex items-center justify-between gap-2 border-t-2 border-dashed border-gray-800 pt-4">
							{!post.recommended ? (
								<button
									className="ml-auto flex items-center gap-1 rounded-full p-1 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
									onClick={handleAddToSeriesList}
								>
									<PlusCircleIcon className="h-6 w-6" width="24" height="24" />
									Recomended Series
								</button>
							) : (
								<button
									className="ml-auto flex items-center gap-1 rounded-full p-1 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
									onClick={handleRemoveFromSeriesList}
								>
									<TrashIcon className="h-6 w-6" width="24" height="24" />
									Remove recomendation
								</button>
							)}
						</div>
					) : null}

					<div className="mb-4 flex items-center justify-between gap-2 border-t-2 border-dashed border-gray-800 pt-4">
						<button
							className="flex items-center gap-1 rounded-full p-1 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
							onClick={() => setOpenEdit(false)}
						>
							<XCircleIcon className="h-6 w-6" width="24" height="24" />
							Cancel
						</button>

						<button
							className={`flex items-center gap-1 rounded-full p-1 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none ${
								linkingAnime && 'ml-auto'
							}`}
							onClick={handleUpdate}
						>
							<ArrowDownCircleIcon className="h-6 w-6" width="24" height="24" />
							Save
						</button>
					</div>
				</>
			) : (
				<>
					<div className="mt-4 flex flex-col gap-4 border-t-2 border-dashed border-gray-800 py-4">
						{<GetRating rating={post.rating || 0} />}
						{post.recommendation && (
							<p className="quate text-lg text-yellow-400">
								{post.recommendation}
							</p>
						)}
						{post.review && (
							<div className="border-t-2 border-dashed border-gray-800 pt-4">
								<p className="quate">{post.review}</p>
							</div>
						)}
						{/*
							//! BUG in anime sort order
						 {post.linkanime && sortOrder !== 0 && (
							<div className="flex items-center gap-1 border-t-2 border-dashed border-gray-800 pt-4">
								<span className="rounded-md bg-fuchsia-700 px-2 py-1">
									{sortOrder}
								</span>
								in Anime Top List
							</div>
						)} */}
					</div>
					{session && (
						<div className="flex items-center justify-between gap-1 border-t-2 border-dashed border-gray-800 pt-4">
							<button
								className="rounded-full p-1 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
								onClick={() => setOpenEdit(true)}
							>
								<PencilSquareIcon className="h-6 w-6" width="24" height="24" />
							</button>

							{confirmDelete && (
								<div className="ml-auto">
									{`Am I `}
									<button
										className="rounded-lg font-semibold text-yellow-700 duration-300 hover:text-fuchsia-500 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
										onClick={handleDelete}
									>
										sure
									</button>
									{` to delete?`}
									<p className="pr-2 text-sm">
										Make sure it&#39;s{' '}
										<span className="font-semibold text-pink-600">NOT</span> in
										any Top list!
									</p>
								</div>
							)}

							<button
								onClick={() => setConfirmDelete(!confirmDelete)}
								className="rounded-full p-1 text-yellow-700 hover:text-fuchsia-800 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
							>
								<TrashIcon className="h-6 w-6" width="24" height="24" />
							</button>
						</div>
					)}
				</>
			)}
		</>
	)
}
