'use client'

import { useState } from 'react'
import { SortableList } from '@/components/sortable-list'
import Image from 'next/image'
import { Post } from '@/lib/post.types'
import { Loader } from '@/components/loader'
import { useRouter } from 'next/navigation'
import { DownloadCloud } from 'lucide-react'
import { updateTopList } from '@/lib/actions'
import { Button } from '../ui/button'
import { StarRating } from '../star-rating'
import { ListTypes } from '@/lib/list.types'

interface SortableListContainerProps extends ListTypes {
	posts: Post[]
}

export default function PostsListSortableList({
	posts,
	list,
}: SortableListContainerProps) {
	const [loading, setLoading] = useState(false)
	const [items, setItems] = useState(posts)
	const router = useRouter()

	const handleSave = async () => {
		setLoading(true)
		let listArray: number[] = []
		items.forEach((item: Post) => {
			listArray.push(item.id)
		})

		const { status } = await updateTopList({
			list,
			newList: listArray,
		})

		if (status === 'success') {
			if (list === 'list_anime_top') {
				return router.push(`/anime`)
			}
			if (list === 'list_movies_top') {
				return router.push(`/top/movie`)
			}
			if (list === 'list_series_top') {
				return router.push(`/top/tv`)
			}

			return router.push(`/`)
		} else {
			console.log('error')
		}

		setLoading(false)
	}

	return (
		<div>
			<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
				<div className="px-1.5">Order</div>
				{!loading ? (
					<Button onClick={handleSave} variant={'ghost'} className="gap-2">
						<DownloadCloud strokeWidth={1.5} className="h-6 w-6" />
						Save
					</Button>
				) : (
					<div className="flex h-10">
						<Loader />
					</div>
				)}
			</div>

			<SortableList
				items={items}
				onChange={setItems}
				renderItem={(item) => (
					<SortableList.Item id={item.id}>
						<div className="flex items-center justify-between gap-4 p-1">
							<div className="flex w-full flex-row items-center gap-4">
								<Image
									src={`https://image.tmdb.org/t/p/w200${item.poster}`}
									alt={item.title || 'poster'}
									width={200}
									height={300}
									className="h-20 w-14 shrink-0 overflow-hidden rounded-lg border-2 border-muted bg-muted"
									unoptimized={true}
								/>
								<div className="flex w-full flex-col gap-x-4 gap-y-1 md:flex-row md:justify-between">
									<div className="line-clamp-1">{item.title}</div>
									<div>
										<StarRating rating={item.rating || 0} />
									</div>
								</div>
							</div>
							<SortableList.DragHandle />
						</div>
					</SortableList.Item>
				)}
			/>
		</div>
	)
}
