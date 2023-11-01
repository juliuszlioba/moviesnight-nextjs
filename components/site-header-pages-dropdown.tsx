import { Clapperboard, Heart, Menu, Search } from 'lucide-react'
import {
	DropdownMenu,
	DropdownMenuContent,
	DropdownMenuItem,
	DropdownMenuSeparator,
	DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'

import { Button } from './ui/button'
import Link from 'next/link'

export function NavPagesDropdown() {
	return (
		<DropdownMenu>
			<DropdownMenuTrigger asChild>
				<Button variant={'ghost'} className="px-3">
					<Menu strokeWidth={1.5} />
				</Button>
			</DropdownMenuTrigger>
			<DropdownMenuContent align="end" sideOffset={12}>
				<DropdownMenuItem className="text-base" asChild>
					<Link href="/anime" className="flex items-center">
						<Heart strokeWidth={1.5} className="mr-2 h-5 w-5" />
						Anime
					</Link>
				</DropdownMenuItem>
				<DropdownMenuItem className="text-base" asChild>
					<Link href="/top/movie" className="flex items-center">
						<Clapperboard strokeWidth={1.5} className="mr-2 h-5 w-5" />
						Movies Top
					</Link>
				</DropdownMenuItem>
				<DropdownMenuItem className="text-base" asChild>
					<Link href="/top/tv" className="flex items-center">
						<Clapperboard strokeWidth={1.5} className="mr-2 h-5 w-5" />
						Series Top
					</Link>
				</DropdownMenuItem>
				<DropdownMenuSeparator />
				<DropdownMenuItem className="text-base" asChild>
					<Link href="/search" className="flex items-center">
						<Search strokeWidth={1.5} className="mr-2 h-5 w-5" />
						Search
					</Link>
				</DropdownMenuItem>
			</DropdownMenuContent>
		</DropdownMenu>
	)
}
