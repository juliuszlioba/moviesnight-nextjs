import Image from 'next/image'
import { createClient } from '@/utils/supabase/server'

export default async function AboutPage() {
	const supabase = createClient()
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
					<p>
						Curently there is{' '}
						<span className="text-lg font-bold text-primary">{count}</span>{' '}
						titles of Movies and Series on the list since I started tracking
						what I watch on March 13, 2016.
					</p>
					<p>
						Some records were added retroactively with approximate viewing date.
					</p>
					<p>
						I <span className="text-lg font-bold text-primary">do not</span> add
						unfinished movies or dropped series to the list, with one exception
						to some exceptionally good series I am currently watching and I know
						that will definitely going to finish it.
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
						className="relative inline-block pt-4"
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
				<div className="pb-8">
					<h1 className="pb-2 text-2xl">Your privacy?</h1>
					<p>
						At the moment there are no tracking scripts on the website, so I do
						not gather any information about your visit.
					</p>
				</div>
			</div>
		</main>
	)
}
