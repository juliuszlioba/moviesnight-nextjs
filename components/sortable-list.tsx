import React, { useMemo, useState } from 'react'
import type { ReactNode } from 'react'
import {
	DndContext,
	KeyboardSensor,
	PointerSensor,
	useSensor,
	useSensors,
} from '@dnd-kit/core'
import type { Active, UniqueIdentifier } from '@dnd-kit/core'
import {
	SortableContext,
	arrayMove,
	sortableKeyboardCoordinates,
} from '@dnd-kit/sortable'

import { DragHandle, SortableItem } from '@/components/sortable-item'
import { SortableOverlay } from '@/components/sortable-overlay'
import { Post } from '@/lib/post.types'

interface BaseItem {
	id: UniqueIdentifier
}

interface Props<T extends BaseItem> {
	items: T[]
	onChange(items: T[]): void
	renderItem(item: T): ReactNode
}

export function SortableList<T extends Post>({
	items,
	onChange,
	renderItem,
}: Props<T>) {
	const [active, setActive] = useState<Active | null>(null)
	const activeItem = useMemo(
		() => items.find((item) => item.id === active?.id),
		[active, items]
	)
	const sensors = useSensors(
		useSensor(PointerSensor),
		useSensor(KeyboardSensor, {
			coordinateGetter: sortableKeyboardCoordinates,
		})
	)

	return (
		<DndContext
			sensors={sensors}
			onDragStart={({ active }) => {
				setActive(active)
			}}
			onDragEnd={({ active, over }) => {
				if (over && active.id !== over?.id) {
					const activeIndex = items.findIndex(({ id }) => id === active.id)
					const overIndex = items.findIndex(({ id }) => id === over.id)

					onChange(arrayMove(items, activeIndex, overIndex))
				}
				setActive(null)
			}}
			onDragCancel={() => {
				setActive(null)
			}}
		>
			<SortableContext items={items}>
				<div role="application">
					{items.map((item, index) => (
						<div
							key={item.id}
							className="flex items-center gap-2 border-b-2 border-dashed border-muted py-2 first:pt-0 last:border-none"
						>
							<div className="w-11 shrink-0 rounded-md bg-muted px-1 py-1 text-center">
								{index + 1}
							</div>
							{renderItem(item)}
						</div>
					))}
				</div>
			</SortableContext>
			<SortableOverlay>
				{activeItem ? renderItem(activeItem) : null}
			</SortableOverlay>
		</DndContext>
	)
}

SortableList.Item = SortableItem
SortableList.DragHandle = DragHandle
