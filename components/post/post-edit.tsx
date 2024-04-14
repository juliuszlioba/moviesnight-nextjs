import { fetchPost, getAnimeListPostion } from '@/lib/data'
import Image from 'next/image'
import { notFound } from 'next/navigation'
import { toInt } from 'radash'
import { PostEditForm } from './post-edit-form'
import EditPostPosition from './post-list-item-top-position'

export default async function PostEdit({
	year,
	slug,
}: {
	year: string
	slug: string
}) {
	const { post } = await fetchPost({
		slug: slug,
		year: toInt(year),
	})

	if (!post) {
		notFound()
	}

	const listposition =
		post.linkanime === true
			? await getAnimeListPostion({
					id: post.id,
				})
			: null

	return (
		<div>
			<div className="flex pb-4">
				<div>
					{post?.poster && (
						<Image
							src={`https://image.tmdb.org/t/p/w200${post.poster}`}
							alt={post?.title || 'poster'}
							width={200}
							height={300}
							className="h-[75px] w-[50px] shrink-0 overflow-hidden rounded-md border-2 border-gray-900 bg-gray-800"
							unoptimized={true}
						/>
					)}
				</div>
				<div className="px-2 py-2">
					<h2 className="flex items-start justify-between gap-2 text-2xl md:justify-start">
						{post?.title}
					</h2>
					<p className="text-sm text-gray-400">{post?.year && post.year}</p>
				</div>
			</div>

			<PostEditForm {...post} />

			{post.linkanime && listposition && (
				<div className="mt-4 flex flex-wrap items-center justify-between gap-2 rounded-md border-2 border-dashed bg-muted/30 p-4">
					<div className="flex items-center gap-2">
						Anime Top List:
						<span className="flex h-10 items-center rounded-md border-2 border-primary px-3 py-1">
							{listposition}
						</span>
					</div>

					<EditPostPosition
						id={post.id}
						listposition={listposition}
						list="list_anime_top"
					/>
				</div>
			)}
		</div>
	)
}
