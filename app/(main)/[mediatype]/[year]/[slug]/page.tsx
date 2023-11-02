import PostItem from '@/components/post/post-item'
import { PostItemSkeleton } from '@/components/skeletons'
import supabaseServerClient from '@/lib/supabase'
import { Suspense } from 'react'

export default async function PostPage({
	params,
}: {
	params: { year: string; slug: string }
}) {
	const supabase = await supabaseServerClient()
	const {
		data: { session },
	} = await supabase.auth.getSession()

	return (
		<main>
			<Suspense key={`year-string`} fallback={<PostItemSkeleton />}>
				<PostItem year={params.year} slug={params.slug} session={session} />
			</Suspense>
		</main>
	)
}
