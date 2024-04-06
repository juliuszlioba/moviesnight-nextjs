import PostEdit from '@/components/post/post-edit'
import { createClient } from '@/utils/supabase/server'
import { redirect } from 'next/navigation'

export default async function PostEditPage({
	params,
}: {
	params: { year: string; slug: string }
}) {
	const supabase = createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		redirect('/')
	}

	return (
		<main>
			<PostEdit year={params.year} slug={params.slug} />
		</main>
	)
}
