import TmdbList from '@/components/post/tmdb-list'
import Search from '@/components/search'
import { Database } from '@/lib/database.types'
import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'

export default async function PostAddPage({
	searchParams,
}: {
	searchParams?: {
		search?: string
	}
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
			<div className="space-y-4">
				<Search placeholder="Search TMDB" />
				<TmdbList searchQuery={searchParams?.search} />
			</div>
		</main>
	)
}
