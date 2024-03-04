'use client'

import { useForm } from 'react-hook-form'
import * as z from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import {
	CalendarIcon,
	Save,
	XCircle,
	AlertCircleIcon,
	PenLine,
} from 'lucide-react'

import { Button, buttonVariants } from '@/components/ui/button'
import {
	Form,
	FormControl,
	FormField,
	FormItem,
	FormLabel,
	FormMessage,
} from '@/components/ui/form'
import {
	Select,
	SelectContent,
	SelectItem,
	SelectTrigger,
	SelectValue,
} from '@/components/ui/select'
import {
	Popover,
	PopoverContent,
	PopoverTrigger,
} from '@/components/ui/popover'
import { Input } from '@/components/ui/input'
import { Checkbox } from '@/components/ui/checkbox'
import { Calendar } from '@/components/ui/calendar'
import { Textarea } from '@/components/ui/textarea'
import { format } from 'date-fns'
import { cn } from '@/lib/utils'
import { Post } from '@/lib/post.types'
import Link from 'next/link'

import { PostEditFormSchema } from '@/lib/post.types'
import { type Status, updatePost } from '@/lib/actions'
import { useState } from 'react'
import { Loader } from '../loader'
import { useRouter } from 'next/navigation'

export function PostEditForm({
	id,
	rating,
	recommendation,
	review,
	linkanime,
	recommended,
	watchedat,
	mediatype,
	year,
	slug,
}: Post) {
	const form = useForm<z.infer<typeof PostEditFormSchema>>({
		resolver: zodResolver(PostEditFormSchema),
		defaultValues: {
			id: id,
			rating: String(rating),
			recommendation: String(recommendation),
			review: String(review),
			linkanime: Boolean(linkanime),
			recommended: Boolean(recommended),
			watchedAt: new Date(String(watchedat)),
		},
	})

	const [loading, setLoading] = useState(false)
	const [error, setError] = useState<Status | undefined>(undefined)

	const { push } = useRouter()

	async function onSubmit(values: z.infer<typeof PostEditFormSchema>) {
		setLoading(true)
		const { status } = await updatePost({
			values,
			prevState: {
				linkanime: Boolean(linkanime),
				recommended: Boolean(recommended),
			},
		})

		if (status === 'success') {
			return push(`/${mediatype}/${year}/${slug}`)
		} else {
			setError({ status })
		}

		setLoading(false)
	}

	return (
		<>
			<Form {...form}>
				<form
					onSubmit={form.handleSubmit(onSubmit)}
					//action={updatePost}
					className="space-y-4 border-t-2 border-dashed border-muted pt-4"
				>
					<div className="flex flex-col gap-4 md:flex-row">
						<FormField
							control={form.control}
							name="rating"
							render={({ field }) => (
								<FormItem className="whitespace-nowrap">
									<Select
										onValueChange={field.onChange}
										defaultValue={field.value}
									>
										<FormControl>
											<SelectTrigger>
												<SelectValue placeholder="Rating" />
											</SelectTrigger>
										</FormControl>
										<SelectContent>
											<SelectItem value="0">No rating</SelectItem>
											<SelectItem value="10">10 - Masterpiece</SelectItem>
											<SelectItem value="9">9 - Great</SelectItem>
											<SelectItem value="8">8 - Good</SelectItem>
											<SelectItem value="7">7 - Fine</SelectItem>
											<SelectItem value="6">6 - Mediocre</SelectItem>
											<SelectItem value="5">5 - Could be better</SelectItem>
											<SelectItem value="4">4 - Forgetable</SelectItem>
											<SelectItem value="3">3 - Just Bad</SelectItem>
											<SelectItem value="2">2 - Waste of time</SelectItem>
											<SelectItem value="1">1 - Total garbage</SelectItem>
										</SelectContent>
									</Select>
									<FormMessage />
								</FormItem>
							)}
						/>
						<FormField
							control={form.control}
							name="recommendation"
							render={({ field }) => (
								<FormItem className="w-full">
									<FormControl>
										<Input placeholder="recommendation" {...field} />
									</FormControl>
									<FormMessage />
								</FormItem>
							)}
						/>
					</div>
					<FormField
						control={form.control}
						name="review"
						render={({ field }) => (
							<FormItem>
								<FormControl>
									<Textarea placeholder="Review" {...field} />
								</FormControl>
								<FormMessage />
							</FormItem>
						)}
					/>
					<div className="flex flex-col justify-between gap-4 md:flex-row">
						<FormField
							control={form.control}
							name="watchedAt"
							render={({ field }) => (
								<FormItem className="flex flex-col">
									<Popover>
										<PopoverTrigger asChild>
											<FormControl>
												<Button
													variant={'outline'}
													className={cn(
														'w-[240px] pl-3 text-left font-normal',
														!field.value && 'text-muted-foreground'
													)}
												>
													{field.value ? (
														format(field.value, 'PPP')
													) : (
														<span>Watch date</span>
													)}
													<CalendarIcon className="ml-auto h-4 w-4 opacity-50" />
												</Button>
											</FormControl>
										</PopoverTrigger>
										<PopoverContent className="w-auto p-0" align="start">
											<Calendar
												mode="single"
												selected={field.value}
												onSelect={field.onChange}
												initialFocus
											/>
										</PopoverContent>
									</Popover>

									<FormMessage />
								</FormItem>
							)}
						/>
						<div className="flex flex-wrap items-center gap-2">
							<div className="flex items-center gap-2">
								<FormField
									control={form.control}
									name="linkanime"
									render={({ field }) => (
										<FormItem className="flex flex-row items-start space-x-3 space-y-0 p-2">
											<FormControl>
												<Checkbox
													checked={field.value}
													onCheckedChange={field.onChange}
												/>
											</FormControl>
											<div className="space-y-1 leading-none">
												<FormLabel>Anime List</FormLabel>
											</div>
										</FormItem>
									)}
								/>
								{linkanime && (
									<Link
										href={`/${mediatype}/${year}/${slug}`}
										className={cn(
											buttonVariants({
												variant: 'ghost',
											}),
											'gap-2 px-3'
										)}
									>
										<PenLine strokeWidth={1.5} />
										Edit Position
									</Link>
								)}
							</div>

							<FormField
								control={form.control}
								name="recommended"
								render={({ field }) => (
									<FormItem className="flex flex-row items-start space-x-3 space-y-0 p-2">
										<FormControl>
											<Checkbox
												checked={field.value}
												onCheckedChange={field.onChange}
											/>
										</FormControl>
										<div className="space-y-1 leading-none">
											<FormLabel>Recomended</FormLabel>
										</div>
									</FormItem>
								)}
							/>
						</div>
					</div>
					<div className="flex justify-between border-t-2 border-dashed border-muted pt-4">
						<Link
							href={`/${mediatype}/${year}/${slug}`}
							className={cn(
								buttonVariants({
									variant: 'ghost',
								}),
								'gap-2'
							)}
						>
							<XCircle strokeWidth={1.5} /> Back
						</Link>

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
					</div>
				</form>
			</Form>
		</>
	)
}
