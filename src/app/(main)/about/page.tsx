import { createServerComponentSupabaseClient } from '@supabase/auth-helpers-nextjs'
import { headers, cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import Image from 'next/image'

export default async function Page() {
	const supabase = createServerComponentSupabaseClient<Database>({
		headers,
		cookies,
	})
	const { data, count, error } = await supabase
		.from('posts')
		.select('*', { count: 'exact' })

	return (
		<main>
			<div className="flex flex-col gap-6">
				<div>
					<h1 className="pb-2 text-2xl">What is this website?</h1>
					<p>
						This website serves me as simple personal list of recently seen
						movies and series.
					</p>
					<p>{`Curently there is ${count} titles of Movies and Series on the list since I started tracking what I watch on March 13, 2016.`}</p>
					<p>
						Some records were added retroactively with approximate viewing date.
					</p>
				</div>
				<div>
					<p>
						This product uses the{' '}
						<a
							href="https://www.themoviedb.org/documentation/api"
							target="_blank"
							rel="noreferrer"
							className="hover:text-fuchsia-700"
						>
							TMDb API
						</a>{' '}
						but is not endorsed or certified by{' '}
						<a
							href="https://www.themoviedb.org/"
							target="_blank"
							rel="noreferrer"
							className="hover:text-fuchsia-700"
						>
							TMDb
						</a>
					</p>
					<a
						href="https://www.themoviedb.org/"
						target="_blank"
						rel="noreferrer"
						className="relative block pt-4"
					>
						<Image
							src="/img/svg/themoviedb_logo-full.svg"
							alt="TMDb Logo"
							width={185.04}
							height={133.4}
							className="w-24"
						/>
					</a>
				</div>
			</div>
		</main>
	)
}
