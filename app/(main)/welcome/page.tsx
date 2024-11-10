import { ContinueButton } from './button'

export default async function Page(
    props: {
        searchParams?: Promise<{
            error?: string
            error_description?: string
        }>
    }
) {
    const searchParams = await props.searchParams;
    return (
		<div className="grid items-center pb-8 text-center">
			<div className="flex flex-col justify-center">
				<div className="pb-4">
					{searchParams?.error ? (
						<>
							<p className="pb-1 text-2xl">Oh no...</p>
							<p>{searchParams.error_description}</p>
						</>
					) : (
						<>
							<p className="pb-1 text-2xl">I&#39;m in!</p>
							<p>Time for action!</p>
						</>
					)}
				</div>
				<div className="flex justify-center">
					<ContinueButton />
				</div>
			</div>
		</div>
	)
}
