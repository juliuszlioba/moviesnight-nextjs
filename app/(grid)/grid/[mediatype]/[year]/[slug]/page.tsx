import PostItem from '@/components/post/post-item-grid'
import { PostItemSkeleton } from '@/components/skeletons'
import { Suspense } from 'react'

export default async function GridPage(
    props: {
        params: Promise<{ year: string; slug: string }>
    }
) {
    const params = await props.params;
    return (
		<main className="flex flex-col">
			<Suspense key={`year-string`} fallback={<PostItemSkeleton />}>
				<PostItem year={params.year} slug={params.slug} />
			</Suspense>
		</main>
	)
}
