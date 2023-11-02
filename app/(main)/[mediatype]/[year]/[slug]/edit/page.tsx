import PostEdit from '@/components/post/post-edit'
import supabaseServerClient from '@/lib/supabase'
import { redirect } from 'next/navigation'

export default async function PostEditPage({
	params,
}: {
	params: { year: string; slug: string }
}) {
	const supabase = await supabaseServerClient()
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
