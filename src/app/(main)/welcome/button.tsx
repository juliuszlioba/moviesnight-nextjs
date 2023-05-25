'use client'

import { useRouter } from 'next/navigation'

export function ContinueButton() {
	const router = useRouter()

	const handleNextStep = async () => {
		await router.refresh()
		return router.push('/')
	}

	return (
		<>
			<button
				onClick={() => handleNextStep()}
				className="flex whitespace-nowrap rounded-md border-2 border-fuchsia-800 bg-fuchsia-800 p-2 text-white hover:bg-pink-800 focus:outline-none focus:ring-2 focus:ring-fuchsia-600"
			>
				Continue
			</button>
		</>
	)
}
