import Image from 'next/image'
import SignIn from '@/components/auth/sign-in'
import SignOut from '@/components/auth/sign-out'
import supabaseServerClient from '@/lib/supabase'

export default async function Login() {
	const supabase = await supabaseServerClient()
	const {
		data: { session },
	} = await supabase.auth.getSession()

	if (!session) {
		return <SignIn />
	}

	return (
		<div className="flex gap-2">
			<Image
				src={session.user?.user_metadata.avatar_url}
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
