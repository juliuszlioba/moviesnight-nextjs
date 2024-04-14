import { Button } from '@/components/ui/button'
import { FileWarning } from 'lucide-react'
import Link from 'next/link'

export default function Custom404() {
	return (
		<div className="mx-auto flex min-h-screen w-full max-w-screen-lg flex-col px-3 pt-2 md:px-4 md:pt-8 2xl:pt-24">
			<main className="flex h-full flex-col items-center justify-center gap-4">
				<FileWarning size={36} strokeWidth={1.5} />
				<h2 className="text-2xl">404 | Not Found</h2>
				<Button variant="default" asChild>
					<Link href="/">Go Back</Link>
				</Button>
			</main>
		</div>
	)
}
