'use client'

import type { TMDBresultsEntity, TMDBsearchResponse } from '@/types/tmdb.types'

import { useState, useRef } from 'react'
import Loader from '@/components/loader'
import SearchListItem from '@/components/search-list-item'

export default function AddPage() {
	const searchInput = useRef<HTMLInputElement>(null)
	const [loading, setLoading] = useState(false)
	const [searchResults, setSearchResults] = useState([] as TMDBresultsEntity[])

	async function handleSearch(event: React.FormEvent) {
		event.preventDefault()

		if (!searchInput.current || searchInput.current.value === '') {
			return false
		}

		setLoading(true)

		const query = encodeURIComponent(searchInput.current.value)
		const searchAPIurl = `https://api.themoviedb.org/3/search/multi?language=en-US&api_key=9c0d4a09964c99c298dc1fff9e90ba01&query=${query}`

		const res = await fetch(searchAPIurl)
			.then((response) => response.json())
			.then((data: TMDBsearchResponse) => {
				if (!data.results) {
					return false
				}
				setSearchResults(data.results as TMDBresultsEntity[])
				setLoading(false)
			})
	}

	function SearchForm() {
		return (
			<form onSubmit={handleSearch} className="flex items-center gap-2">
				<input
					type="search"
					className="h-full w-full rounded-md border-2 border-fuchsia-800 bg-gray-800 p-2 text-white focus:border-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-700"
					id="searchField"
					aria-describedby="searchField"
					placeholder="Search TMDB for movie/series"
					autoFocus={true}
					ref={searchInput}
				/>
				<button
					type="submit"
					className="whitespace-nowrap rounded-md border-2 border-fuchsia-800 bg-fuchsia-800 p-2 text-white hover:bg-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-600"
				>
					Search TMDB
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
				{searchResults.map((item, index) => {
					if (item.media_type === 'tv' || item.media_type === 'movie') {
						return <SearchListItem key={index} post={item} />
					}
					return false
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
