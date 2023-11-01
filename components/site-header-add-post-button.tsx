'use client'

import { cn } from '@/lib/utils'
import { PlusCircle } from 'lucide-react'
import Link from 'next/link'
import { buttonVariants } from './ui/button'

export default function AddPost() {
	return (
		<Link
			href="/add"
			className={cn(
				buttonVariants({
					variant: 'ghost',
				}),
				'px-3'
			)}
		>
			<PlusCircle strokeWidth={1.5} />
		</Link>
	)
}
