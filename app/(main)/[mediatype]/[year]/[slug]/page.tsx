import PostItem from '@/components/post/post-item'
import { PostItemSkeleton } from '@/components/skeletons'
import { createClient } from '@/utils/supabase/server'
import { Suspense } from 'react'

export default async function PostPage(
    props: {
        params: Promise<{ year: string; slug: string }>
    }
) {
    const params = await props.params;
    const supabase = await createClient()
    const {
		data: { user },
	} = await supabase.auth.getUser()

    return (
		<main>
			<Suspense key={`year-string`} fallback={<PostItemSkeleton />}>
				<PostItem year={params.year} slug={params.slug} auth={user} />
			</Suspense>
		</main>
	)
}
