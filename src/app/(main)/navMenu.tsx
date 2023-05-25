'use client'

import Link from 'next/link'
import { Menu } from '@headlessui/react'
import {
	HeartIcon,
	MagnifyingGlassIcon,
	Bars3Icon,
	FilmIcon,
	TvIcon,
} from '@heroicons/react/24/outline'

export function MainNavMenu() {
	return (
		<>
			<Menu as="div" className="relative z-30 inline-block">
				<div className="flex items-center">
					<Menu.Button className="rounded-full p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none">
						<Bars3Icon className="h-6 w-6" width="24" height="24" />
					</Menu.Button>
				</div>
				<Menu.Items className="absolute right-0 mt-2 flex w-40 origin-top-right flex-col rounded-md border-2 border-fuchsia-700 bg-gray-800 p-2">
					<Menu.Item>
						{({ active }) => (
							<Link
								href="/anime"
								className="flex gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
							>
								<HeartIcon className="h-6 w-6" width="24" height="24" />
								Anime
							</Link>
						)}
					</Menu.Item>

					<Menu.Item>
						{({ active }) => (
							<Link
								href="/movies/top"
								className="flex gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
							>
								<FilmIcon className="h-6 w-6" width="24" height="24" />
								Movies Top
							</Link>
						)}
					</Menu.Item>

					<Menu.Item>
						{({ active }) => (
							<Link
								href="/series/top"
								className="flex gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
							>
								<TvIcon className="h-6 w-6" width="24" height="24" />
								Series Top
							</Link>
						)}
					</Menu.Item>

					<Menu.Item>
						<span className="mt-1 w-full border-t-2 border-t-gray-700 pt-1"></span>
					</Menu.Item>

					<Menu.Item>
						{({ active }) => (
							<Link
								href="/search"
								className="flex gap-2 rounded-md p-1.5 hover:text-fuchsia-700 focus:ring-2 focus:ring-fuchsia-700 focus-visible:outline-none"
							>
								<MagnifyingGlassIcon
									className="h-6 w-6"
									width="24"
									height="24"
								/>
								Search
							</Link>
						)}
					</Menu.Item>
				</Menu.Items>
			</Menu>
		</>
	)
}
