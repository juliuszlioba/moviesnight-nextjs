'use client'

import { useState } from 'react'
import { Loader } from '../loader'
import { Button, buttonVariants } from '../ui/button'
import { PlusCircleIcon } from 'lucide-react'
import { TMDBresultsEntity } from '@/lib/tmdb.types'
import { Status, addPost } from '@/lib/actions'
import { cn } from '@/lib/utils'
import { useRouter } from 'next/navigation'

export default function PostAddButton({ post }: { post: TMDBresultsEntity }) {
	const { push } = useRouter()

	const [loading, setLoading] = useState(false)
	const [error, setError] = useState<Status | undefined>(undefined)

	const handleAdd = async () => {
		setLoading(true)

		const { status, redirectTo } = await addPost({ post })
		if (status === 'success') {
			push(redirectTo || '/')
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

	if (loading) {
		return (
			<div>
				<Loader />
			</div>
		)
	}

	return (
		<div>
			<Button variant={'default'} className="gap-2" onClick={() => handleAdd()}>
				<PlusCircleIcon strokeWidth={1.5} />
				Add
			</Button>
		</div>
	)
}
