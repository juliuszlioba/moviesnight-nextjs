import TmdbList from '@/components/post/tmdb-list'
import Search from '@/components/search'
import { SearchImdbListSkeleton } from '@/components/skeletons'
import { createClient } from '@/utils/supabase/server'
import { redirect } from 'next/navigation'
import { Suspense } from 'react'

export default async function PostAddPage(
    props: {
        searchParams?: Promise<{
            search?: string
        }>
    }
) {
    const searchParams = await props.searchParams;
    const supabase = await createClient()
    const {
		data: { user },
	} = await supabase.auth.getUser()

    if (!user) {
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
