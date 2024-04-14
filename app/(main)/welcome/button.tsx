'use client'

import { Button } from '@/components/ui/button'
import { useRouter } from 'next/navigation'

export function ContinueButton() {
	const router = useRouter()

	const handleNextStep = async () => {
		router.push('/')
		router.refresh()
		return
	}

	return (
		<>
			<Button onClick={() => handleNextStep()}>Continue</Button>
		</>
	)
}
