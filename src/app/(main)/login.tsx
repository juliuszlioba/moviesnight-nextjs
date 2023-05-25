import { createServerComponentClient } from '@supabase/auth-helpers-nextjs'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'

import Image from 'next/image'
import { LoginButton, LogOutButton } from '@/components/authButtons'

export default async function Login() {
	const supabase = createServerComponentClient<Database>({ cookies })
	const {
		data: { session },
	} = await supabase.auth.getSession()

	if (!session) {
		return (
			<div className="flex">
				<LoginButton />
			</div>
		)
	}

	return (
		<div className="flex gap-2">
			<Image
				src={session.user?.user_metadata.avatar_url}
				alt="avatar"
				width={24}
				height={24}
				className="mx-1.5 my-2 h-6 w-6 rounded-full"
				unoptimized={true}
			/>

			<LogOutButton />
		</div>
	)
}
