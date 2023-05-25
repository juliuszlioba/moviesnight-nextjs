import Image from 'next/image'
import { LoginButton, LogOutButton } from '@/components/authButtons'

export default function Login({ session }: any) {
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
