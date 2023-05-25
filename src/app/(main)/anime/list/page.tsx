import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'

import ListItemMinimal from '@/components/post-list-item-minimal'
import Error from '@/components/error'
import Header from './header'

export default async function Page() {
	const supabase = createServerComponentClient<Database>({
		cookies,
	})
	const {
		data: { session },
		error,
	} = await supabase.auth.getSession()

	if (error) {
		return <Error message="Problem with loading from database" />
	}

	const { data: posts, count } = await supabase.rpc(
		'list_anime_top',
		{},
		{ count: 'exact' }
	)

	if (!posts) {
		return (
			<div className="flex justify-center">
				<h1>No Posts to show</h1>
			</div>
		)
	}

	return (
		<main>
			<Header total={count} session={session ? true : false} />
			<div className="flex flex-col px-4 2xl:px-1.5">
				{posts.map((post, index: number) => {
					return (
						<ListItemMinimal
							key={index}
							post={post}
							session={session ? true : false}
							listRating={true}
							positionInList={index + 1}
						/>
					)
				})}
			</div>
		</main>
	)
}
