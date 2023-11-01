export default async function AnimePage({
	searchParams,
}: {
	searchParams?: {
		page?: string
		search?: string
	}
}) {
	const currentPage = Number(searchParams?.page) || 1

	return <div>Search Page for searching {searchParams?.search}</div>
}
