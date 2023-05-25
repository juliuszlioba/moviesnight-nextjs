import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import ListItem from '@/components/post-list-item'
import SortableListContainer from './sortableListContainer'

export default async function Page() {
	const supabase = createServerComponentClient<Database>({
		cookies,
	})
	const {
		data: { session },
		error,
	} = await supabase.auth.getSession()

	const { data: posts, count } = await supabase.rpc(
		'list_anime_top',
		{},
		{ count: 'exact' }
	)

	const AllPostsSimple = () => {
		if (!posts) return null

		return (
			<>
				{posts.map((post, index) => {
					return (
						<ListItem
							key={index}
							post={post}
							session={session ? true : false}
							listRating={true}
							positionInList={index + 1}
						/>
					)
				})}
			</>
		)
	}

	return (
		<main>
			{session ? <SortableListContainer posts={posts} /> : <AllPostsSimple />}
		</main>
	)
}
