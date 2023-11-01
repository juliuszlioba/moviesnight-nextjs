'use client'

import { Button } from '@/components/ui/button'
import { FileWarning } from 'lucide-react'
import { useRouter } from 'next/navigation'

export default function NotFound() {
	const router = useRouter()

	const handleRefresh = () => {
		router.back()
	}

	return (
		<main className="flex h-full flex-col items-center justify-center gap-4">
			<FileWarning size={36} strokeWidth={1.5} />
			<h2 className="text-2xl">404 | Not Found</h2>
			<Button variant="outline" onClick={handleRefresh}>
				Go Back
			</Button>
		</main>
	)
}
