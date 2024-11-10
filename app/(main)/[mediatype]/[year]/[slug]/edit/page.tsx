import PostEdit from '@/components/post/post-edit'
import { createClient } from '@/utils/supabase/server'
import { redirect } from 'next/navigation'

export default async function PostEditPage(
    props: {
        params: Promise<{ year: string; slug: string }>
    }
) {
    const params = await props.params;
    const supabase = await createClient()
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
