'use client'

import { useState, useRef } from 'react'
import Loader from '@/components/loader'
import ListItem from '@/components/post-list-item'
import { Post } from '@/types/post.types'

export default function SearchPage() {
	const searchInput = useRef<HTMLInputElement>(null)
	const [loading, setLoading] = useState(false)
	const [searchResults, setSearchResults] = useState([] as Post[])

	async function handleSearch(event: React.FormEvent) {
		event.preventDefault()

		if (!searchInput.current || searchInput.current.value === '') {
			return false
		}

		setLoading(true)

		const query = searchInput.current.value

		if (query.length > 3) {
			const res = await fetch(`/api/post/search/${query}`, {
				method: 'GET',
			})
				.then((response) => response.json())
				.then((data) => {
					if (!data.posts) {
						return false
					}

					setSearchResults(data.posts as Post[])
					setLoading(false)
				})
		} else {
			setLoading(false)
		}
	}

	function SearchForm() {
		return (
			<form onSubmit={handleSearch} className="flex items-center gap-2">
				<input
					type="search"
					className="h-full w-full rounded-md border-2 border-fuchsia-800 bg-gray-800 p-2 text-white focus:border-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-700"
					id="searchField"
					aria-describedby="searchField"
					placeholder="Search website for movie/series - use only one word (min. 3 characters)"
					autoFocus={true}
					ref={searchInput}
				/>
				<button
					type="submit"
					className="whitespace-nowrap rounded-full border-2 border-fuchsia-800 bg-fuchsia-800 px-4 py-2 text-white hover:bg-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-600"
				>
					Search Website
				</button>
			</form>
		)
	}

	function SearchFeed() {
		if (loading) {
			return (
				<div className="flex justify-center py-2">
					<Loader />
				</div>
			)
		}

		return (
			<div className="mt-6">
				{searchResults.map((post, index) => {
					return <ListItem key={index} post={post} session={false} />
				})}
			</div>
		)
	}

	return (
		<>
			<SearchForm />
			<SearchFeed />
		</>
	)
}
