import PostItem from '@/components/post/post-item'
import { PostItemSkeleton } from '@/components/skeletons'
import { Database } from '@/lib/database.types'
import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import { Suspense } from 'react'

export default async function PostPage({
	params,
}: {
	params: { year: string; slug: string }
}) {
	cookies().getAll() // Keep cookies in the JS execution context for Next.js build
	const supabase = createServerComponentClient<Database>({
		cookies,
	})
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
