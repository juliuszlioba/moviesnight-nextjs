import PostEdit from '@/components/post/post-edit'
import { Database } from '@/lib/database.types'
import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'

export default async function PostEditPage({
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

	if (!session) {
		redirect('/')
	}

	return (
		<main>
			<PostEdit year={params.year} slug={params.slug} />
		</main>
	)
}
