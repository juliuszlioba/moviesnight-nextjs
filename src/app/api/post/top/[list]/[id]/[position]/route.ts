import { createRouteHandlerClient } from '@supabase/auth-helpers-nextjs'
import { NextResponse } from 'next/server'
import { cookies } from 'next/headers'
import type { Database } from '@/types/database.types'
import { toInt } from 'radash'

// Update postition
// (list sorting uses client side sorting)
export async function PUT(
	request: Request,
	{
		params,
	}: {
		params: {
			list: 'list_anime_top' | 'list_movies_top' | 'list_series_top'
			id: string
			position: string
		}
	}
) {
	const supabase = createRouteHandlerClient<Database>({
		cookies,
	})

	const {
		data: { session },
		error,
	} = await supabase.auth.getSession()

	if (error) {
		return NextResponse.json({ status: 'error' })
	}

	const findCurrentIndexInArray = (arr: number[], item: number) => {
		const result = arr.indexOf(item)
		return result
	}

	//Change index in array
	const moveArrayItemToNewIndex = (
		arr: any,
		old_index: any,
		new_index: any
	) => {
		if (new_index >= arr.length) {
			var k = new_index - arr.length + 1
			while (k--) {
				arr.push(undefined)
			}
		}
		arr.splice(new_index, 0, arr.splice(old_index, 1)[0])
		const result = arr.filter(Boolean) // Remove all falsy values
		return result
	}

	if (session) {
		try {
			// 1. Get current list
			const { data: listArray } = await supabase
				.from(params.list)
				.select(`id, list`)
				.single()

			if (!listArray) {
				return NextResponse.json({ status: 'error' })
			}

			const listArrayId = listArray.id
			const dataArray = listArray.list

			if (!dataArray) {
				return NextResponse.json({ status: 'error' })
			}

			// 2. Find curent index of object
			const oldIndex = findCurrentIndexInArray(dataArray, toInt(params.id))

			// 3. Change index
			const newArray = moveArrayItemToNewIndex(
				dataArray,
				oldIndex,
				params.position
			)

			// replace array with new array containing new id
			const { error } = await supabase
				.from(params.list)
				.update({ list: newArray })
				.eq('id', listArrayId)
			if (error) {
				return NextResponse.json({ status: 'error' })
			}

			return NextResponse.json({ status: 'success' })
		} catch (error) {
			return NextResponse.json({ status: 'error' })
		}
	} else {
		return NextResponse.json('Not authorised')
	}
}
