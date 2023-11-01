export default async function GridPage({
	searchParams,
}: {
	searchParams?: {
		page?: string
	}
}) {
	const currentPage = Number(searchParams?.page) || 1

	return (
		<main className="flex flex-col">
			<p>Grid | Individual Page</p>
		</main>
	)
}
