'use client'

import { useRouter, usePathname, useSearchParams } from 'next/navigation'
import { useForm } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import {
	Form,
	FormControl,
	FormField,
	FormItem,
	FormMessage,
} from '@/components/ui/form'
import { Input } from '@/components/ui/input'
import { Button } from '@/components/ui/button'
import { SearchIcon } from 'lucide-react'
import * as z from 'zod'

const formSchema = z.object({
	search: z.string().min(3, {
		message: 'At least 3 characters.',
	}),
})

export default function Search({ placeholder }: { placeholder: string }) {
	const searchParams = useSearchParams()
	const pathname = usePathname()
	const { replace } = useRouter()

	const form = useForm<z.infer<typeof formSchema>>({
		resolver: zodResolver(formSchema),
		defaultValues: {
			search: '',
		},
	})

	function onSubmit(values: z.infer<typeof formSchema>) {
		const params = new URLSearchParams(searchParams)
		if (values.search) {
			params.set('search', values.search)
		} else {
			params.delete('query')
		}
		replace(`${pathname}?${params.toString()}`)
	}

	return (
		<Form {...form}>
			<form onSubmit={form.handleSubmit(onSubmit)} className="flex gap-2">
				<FormField
					control={form.control}
					name="search"
					render={({ field }) => (
						<FormItem className="w-full">
							<FormControl>
								<Input placeholder={placeholder} {...field} />
							</FormControl>
							<FormMessage />
						</FormItem>
					)}
				/>
				<Button type="submit" variant={'default'} className="gap-2">
					<SearchIcon strokeWidth={1.5} />
					Search
				</Button>
			</form>
		</Form>
	)
}
