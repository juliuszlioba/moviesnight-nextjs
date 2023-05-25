import Error from '@/components/error'

import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'

export default async function AddRootLayout({
	children,
}: {
	children: React.ReactNode
}) {
	const supabase = createServerComponentClient<Database>({
		cookies,
	})
	const { data, error } = await supabase.auth.getSession()

	if (error) {
		return <Error message="Problem with loading from database" />
	}

	if (!data.session)
		return (
			<div className="flex justify-center">
				<h1>You not loggedin</h1>
			</div>
		)
	return <div>{children}</div>
}
