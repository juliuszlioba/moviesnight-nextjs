import Image from 'next/image'
import SignIn from '@/components/auth/sign-in'
import SignOut from '@/components/auth/sign-out'
import { createClient } from '@/utils/supabase/server'

export default async function Login() {
	const supabase = await createClient()
	const {
		data: { user },
	} = await supabase.auth.getUser()

	if (!user) {
		return <SignIn />
	}

	return (
		<div className="flex gap-2">
			<Image
				src={user.user_metadata.avatar_url}
				alt="avatar"
				width={24}
				height={24}
				className="mx-3 my-2 h-6 w-6 rounded-full"
				unoptimized={true}
			/>

			<SignOut />
		</div>
	)
}
