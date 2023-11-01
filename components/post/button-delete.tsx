'use client'

import { Status, deletePost } from '@/lib/actions'
import { Button, buttonVariants } from '../ui/button'
import { useState } from 'react'
import { Loader } from '../loader'
import { cn } from '@/lib/utils'
import { useRouter } from 'next/navigation'

export default function PostDeleteButton({
	id,
	postMeta,
}: {
	id: number
	postMeta: {
		mediaType: string
		linkanime: boolean
		recommended: boolean
	}
}) {
	const { push } = useRouter()

	const [loading, setLoading] = useState(false)
	const [error, setError] = useState<Status | undefined>(undefined)

	const handleDelete = async () => {
		setLoading(true)

		const { status } = await deletePost({ id, postMeta })
		if (status === 'success') {
			push('/')
		} else {
			setError({ status })
		}

		setLoading(false)
	}

	if (error) {
		return (
			<div
				className={cn(
					buttonVariants({
						variant: 'destructive',
					})
				)}
			>
				Error!
			</div>
		)
	}

	return (
		<div>
			{loading ? (
				<Loader />
			) : (
				<Button onClick={handleDelete} variant={'destructive'}>
					I am sure
				</Button>
			)}
		</div>
	)
}
