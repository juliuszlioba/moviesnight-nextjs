import TmdbList from '@/components/post/tmdb-list'
import Search from '@/components/search'
import { SearchImdbListSkeleton } from '@/components/skeletons'
import { Database } from '@/lib/database.types'
import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'
import { Suspense } from 'react'

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

				{searchParams?.search && (
					<Suspense
						key={`${searchParams.search}`}
						fallback={<SearchImdbListSkeleton />}
					>
						<TmdbList searchQuery={searchParams?.search} />
					</Suspense>
				)}
			</div>
		</main>
	)
}
