'use client'

import { useForm } from 'react-hook-form'
import * as z from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import { AlertCircleIcon, PenLine, Save } from 'lucide-react'
import { useState } from 'react'
import { Button } from '../ui/button'
import {
	Form,
	FormControl,
	FormField,
	FormItem,
	FormMessage,
} from '@/components/ui/form'
import { Input } from '@/components/ui/input'
import { editPostPositionInTopList, type Status } from '@/lib/actions'
import { Loader } from '../loader'
import { toInt } from 'radash'

export const EditPostPositionFormSchema = z.object({
	list: z.string(),
	position: z.string(),
})

export default function EditPostPosition({
	id,
	list,
	listposition,
}: {
	id: number
	list: 'list_anime_top' | 'list_movies_top' | 'list_series_top'
	listposition: number
}) {
	const form = useForm<z.infer<typeof EditPostPositionFormSchema>>({
		resolver: zodResolver(EditPostPositionFormSchema),
		defaultValues: {
			list: list,
			position: String(listposition),
		},
	})

	const [openEdit, setOpenEdit] = useState(false)
	const [loading, setLoading] = useState(false)
	const [error, setError] = useState<Status | undefined>(undefined)

	async function onSubmit(values: z.infer<typeof EditPostPositionFormSchema>) {
		setLoading(true)
		const { status } = await editPostPositionInTopList({
			id,
			list,
			position: toInt(values.position) - 1,
		})

		if (status === 'success') {
			setOpenEdit(false)
		} else {
			setError({ status })
		}
		setLoading(false)
	}

	if (openEdit) {
		return (
			<Form {...form}>
				<form onSubmit={form.handleSubmit(onSubmit)} className="flex gap-2">
					<FormField
						control={form.control}
						name="position"
						render={({ field }) => (
							<FormItem>
								<FormControl>
									<Input type="number" placeholder="Postion" {...field} />
								</FormControl>
								<FormMessage />
							</FormItem>
						)}
					/>
					<div className="flex items-center gap-2">
						{error && (
							<div className="flex gap-2 text-red-500">
								<AlertCircleIcon strokeWidth={1.5} />
								Error!
							</div>
						)}

						{!loading ? (
							<Button type="submit" variant={'ghost'} className="gap-2">
								<Save strokeWidth={1.5} /> Save
							</Button>
						) : (
							<Loader />
						)}
					</div>
				</form>
			</Form>
		)
	}

	return (
		<div>
			<Button
				variant={'ghost'}
				className="gap-2"
				onClick={() => setOpenEdit(true)}
			>
				<PenLine strokeWidth={1.5} />
				Edit postion
			</Button>
		</div>
	)
}
