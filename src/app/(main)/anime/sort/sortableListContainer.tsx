'use client'

import { useState } from 'react'
import { SortableList } from '@/components/sortableList'
import Image from 'next/image'
import { CloudArrowDownIcon } from '@heroicons/react/24/outline'
import { Post } from '@/types/post.types'
import Loader from '@/components/loader'
import { useRouter } from 'next/navigation'

export default function SortableListContainer({ posts }: { posts: any }) {
	const [loading, setLoading] = useState(false)
	const [items, setItems] = useState(posts)
	const router = useRouter()

	const handleSave = () => {
		//!BUG in supabase function returning sorted by id list
		// setLoading(true)
		// let listArray: number[] = []
		// items.forEach((item: Post) => {
		// 	listArray.push(item.id)
		// })
		//
		// fetch('/api/post/top/list_anime_top/', {
		// 	method: 'PUT',
		// 	body: JSON.stringify(listArray),
		// }).then((status) => {
		// 	status.ok ? router.push(`/anime`) : console.log('error')
		// })
	}

	return (
		<div>
			{loading ? (
				<div className="flex w-full justify-center">
					<Loader />
				</div>
			) : (
				<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-gray-800 pb-2">
					<div className="px-1.5">Order</div>
					<button
						onClick={handleSave}
						className="flex items-center gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
					>
						Save Positions{' '}
						<CloudArrowDownIcon className="h-6 w-6" width="24" height="24" />
					</button>
				</div>
			)}
			<SortableList
				items={items}
				onChange={setItems}
				renderItem={(item) => (
					<SortableList.Item id={item.id}>
						<div className="flex items-center justify-between gap-2 rounded-md p-1">
							<Image
								src={`https://image.tmdb.org/t/p/w200${item.poster}`}
								alt={item.title || 'poster'}
								width={200}
								height={300}
								className="h-20 w-14 shrink-0 overflow-hidden rounded-lg border-2 border-gray-900 bg-gray-800"
								unoptimized={true}
							/>
							<div className="mr-auto">{item.title}</div>

							<SortableList.DragHandle />
						</div>
					</SortableList.Item>
				)}
			/>
		</div>
	)
}
