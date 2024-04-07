'use client'

import React, {
	createContext,
	Fragment,
	useCallback,
	useContext,
	useEffect,
	useMemo,
	useRef,
	useState,
} from 'react'

import ReactDOM from 'react-dom'
import invariant from 'tiny-invariant'
import Image from 'next/image'
import {
	DropdownMenu,
	DropdownMenuContent,
	DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import {
	attachClosestEdge,
	Edge,
	extractClosestEdge,
} from '@atlaskit/pragmatic-drag-and-drop-hitbox/closest-edge'
import { getReorderDestinationIndex } from '@atlaskit/pragmatic-drag-and-drop-hitbox/util/get-reorder-destination-index'
import * as liveRegion from '@atlaskit/pragmatic-drag-and-drop-live-region'
import { DropIndicator } from '@atlaskit/pragmatic-drag-and-drop-react-drop-indicator/box'
import { combine } from '@atlaskit/pragmatic-drag-and-drop/combine'
import {
	draggable,
	dropTargetForElements,
	monitorForElements,
} from '@atlaskit/pragmatic-drag-and-drop/element/adapter'
import { pointerOutsideOfPreview } from '@atlaskit/pragmatic-drag-and-drop/element/pointer-outside-of-preview'
import { setCustomNativeDragPreview } from '@atlaskit/pragmatic-drag-and-drop/element/set-custom-native-drag-preview'
import { reorder } from '@atlaskit/pragmatic-drag-and-drop/reorder'
import { token } from '@atlaskit/tokens'
import { Button } from '@/components/ui/button'
import {
	ChevronDown,
	ChevronUp,
	DownloadCloud,
	GripHorizontal,
} from 'lucide-react'
import { Input } from '@/components/ui/input'
import { toInt } from 'radash'
import { ListTypes } from '@/lib/list.types'
import { updateTopList } from '@/lib/actions'

type ItemPosition = 'first' | 'last' | 'middle' | 'only'

type CleanupFn = () => void

type ItemEntry = { itemId: string; element: HTMLElement }

type ListContextValue = {
	getListLength: () => number
	registerItem: (entry: ItemEntry) => CleanupFn
	reorderItem: (args: {
		startIndex: number
		indexOfTarget: number
		closestEdgeOfTarget: Edge | null
	}) => void
	instanceId: symbol
}

const ListContext = createContext<ListContextValue | null>(null)

function useListContext() {
	const listContext = useContext(ListContext)
	invariant(listContext !== null)
	return listContext
}

import type { Post } from '@/lib/post.types'
import { Loader } from './loader'
import { useRouter } from 'next/navigation'
import { StarRating } from './star-rating'

const itemKey = Symbol('item')
type ItemData = {
	[itemKey]: true
	item: Post
	index: number
	instanceId: symbol
}

function getItemData({
	item,
	index,
	instanceId,
}: {
	item: Post
	index: number
	instanceId: symbol
}): ItemData {
	return {
		[itemKey]: true,
		item,
		index,
		instanceId,
	}
}

function isItemData(data: Record<string | symbol, unknown>): data is ItemData {
	return data[itemKey] === true
}

function getItemPosition({
	index,
	items,
}: {
	index: number
	items: Post[]
}): ItemPosition {
	if (items.length === 1) {
		return 'only'
	}

	if (index === 0) {
		return 'first'
	}

	if (index === items.length - 1) {
		return 'last'
	}

	return 'middle'
}

type DraggableState =
	| { type: 'idle' }
	| { type: 'preview'; container: HTMLElement }
	| { type: 'dragging' }

const idleState: DraggableState = { type: 'idle' }
const draggingState: DraggableState = { type: 'dragging' }

function DropDownContent({
	position,
	index,
}: {
	position: ItemPosition
	index: number
}) {
	const { reorderItem, getListLength } = useListContext()

	const isMoveUpDisabled = position === 'first' || position === 'only'
	const isMoveDownDisabled = position === 'last' || position === 'only'

	const positionRef = useRef<HTMLInputElement>(null)

	const moveUp = useCallback(() => {
		reorderItem({
			startIndex: index,
			indexOfTarget: index - 1,
			closestEdgeOfTarget: null,
		})
	}, [index, reorderItem])

	const moveDown = useCallback(() => {
		reorderItem({
			startIndex: index,
			indexOfTarget: index + 1,
			closestEdgeOfTarget: null,
		})
	}, [index, reorderItem])

	const moveToPosition = useCallback(() => {
		const indexOfTarget = toInt(positionRef.current?.value)
		const endIndex = getListLength() - 1

		if (indexOfTarget >= 0 || indexOfTarget <= endIndex) {
			reorderItem({
				startIndex: index,
				indexOfTarget: indexOfTarget - 1,
				closestEdgeOfTarget: null,
			})
		}
	}, [index, getListLength, reorderItem])

	return (
		<DropdownMenuContent>
			<div className="flex flex-col items-center gap-2">
				<div>
					<Button
						variant={'ghost'}
						size={'icon'}
						onClick={moveUp}
						disabled={isMoveUpDisabled}
					>
						<ChevronUp />
					</Button>
					<Button
						variant={'ghost'}
						size={'icon'}
						onClick={moveDown}
						disabled={isMoveDownDisabled}
					>
						<ChevronDown />
					</Button>
				</div>
				<div className="h-0.5 w-full bg-muted"></div>
				<div className="flex gap-2">
					<Input type="number" ref={positionRef} className="w-24" />
					<Button onClick={moveToPosition}>Set</Button>
				</div>
			</div>
		</DropdownMenuContent>
	)
}

function ListItem({
	item,
	index,
	position,
}: {
	item: Post
	index: number
	position: ItemPosition
}) {
	const { registerItem, instanceId } = useListContext()

	const ref = useRef<HTMLDivElement>(null)
	const [closestEdge, setClosestEdge] = useState<Edge | null>(null)

	const dragHandleRef = useRef<HTMLButtonElement>(null)

	const [draggableState, setDraggableState] =
		useState<DraggableState>(idleState)

	useEffect(() => {
		invariant(ref.current)
		invariant(dragHandleRef.current)

		const element = ref.current

		const data = getItemData({ item, index, instanceId })

		return combine(
			registerItem({ itemId: `${item.id}`, element }),
			draggable({
				element,
				dragHandle: dragHandleRef.current,
				getInitialData: () => data,
				onGenerateDragPreview({ nativeSetDragImage }) {
					setCustomNativeDragPreview({
						nativeSetDragImage,
						getOffset: pointerOutsideOfPreview({
							x: token('space.200', '16px'),
							y: token('space.100', '8px'),
						}),
						render({ container }) {
							setDraggableState({ type: 'preview', container })
							return () => setDraggableState(draggingState)
						},
					})
				},
				onDragStart() {
					setDraggableState(draggingState)
				},
				onDrop() {
					setDraggableState(idleState)
				},
			}),
			dropTargetForElements({
				element,
				canDrop({ source }) {
					return (
						isItemData(source.data) && source.data.instanceId === instanceId
					)
				},
				getData({ input }) {
					return attachClosestEdge(data, {
						element,
						input,
						allowedEdges: ['top', 'bottom'],
					})
				},
				onDrag({ self, source }) {
					const isSource = source.element === element
					if (isSource) {
						setClosestEdge(null)
						return
					}

					const closestEdge = extractClosestEdge(self.data)

					const sourceIndex = source.data.index
					invariant(typeof sourceIndex === 'number')

					const isItemBeforeSource = index === sourceIndex - 1
					const isItemAfterSource = index === sourceIndex + 1

					const isDropIndicatorHidden =
						(isItemBeforeSource && closestEdge === 'bottom') ||
						(isItemAfterSource && closestEdge === 'top')

					if (isDropIndicatorHidden) {
						setClosestEdge(null)
						return
					}

					setClosestEdge(closestEdge)
				},
				onDragLeave() {
					setClosestEdge(null)
				},
				onDrop() {
					setClosestEdge(null)
				},
			})
		)
	}, [instanceId, item, index, registerItem])

	return (
		<Fragment>
			<div
				ref={ref}
				className={`relative flex items-center gap-2 py-2 ${draggableState.type === 'dragging' && 'opacity-50'}`}
			>
				<div className="flex">
					<DropdownMenu>
						<DropdownMenuTrigger asChild>
							<Button variant={'ghost'} size={'icon'}>
								{index + 1}
							</Button>
						</DropdownMenuTrigger>
						<DropDownContent position={position} index={index} />
					</DropdownMenu>

					<Button variant={'ghost'} size={'icon'} ref={dragHandleRef}>
						<GripHorizontal />
					</Button>
				</div>

				<Image
					src={`https://image.tmdb.org/t/p/w200${item.poster}`}
					alt={item.title || 'poster'}
					width={200}
					height={300}
					className="h-16 w-12 shrink-0 overflow-hidden rounded-sm border-2 border-muted bg-muted"
					unoptimized={true}
				/>

				<div className="flex w-full flex-col gap-x-4 gap-y-1 md:flex-row md:justify-between">
					<div className="line-clamp-1">{item.title}</div>
					<div>
						<StarRating rating={item.rating || 0} />
					</div>
				</div>

				{closestEdge && <DropIndicator edge={closestEdge} gap="1px" />}
			</div>

			{draggableState.type === 'preview' &&
				ReactDOM.createPortal(
					<div>{item.title}</div>,
					draggableState.container
				)}
		</Fragment>
	)
}

function getItemRegistry() {
	const registry = new Map<string, HTMLElement>()

	function register({ itemId, element }: ItemEntry) {
		registry.set(itemId, element)

		return function unregister() {
			registry.delete(itemId)
		}
	}

	function getElement(itemId: string): HTMLElement | null {
		return registry.get(itemId) ?? null
	}

	return { register, getElement }
}

type ListState = {
	items: Post[]
	lastCardMoved: {
		item: Post
		previousIndex: number
		currentIndex: number
		numberOfItems: number
	} | null
}

interface PostsSortableListProps extends ListTypes {
	posts: Post[]
}

export default function PostsSortableList({
	posts,
	list,
}: PostsSortableListProps) {
	const [loading, setLoading] = useState(false)
	const [{ items }, setListState] = useState<ListState>({
		items: posts,
		lastCardMoved: null,
	})
	const [registry] = useState(getItemRegistry)

	// Isolated instances of this component from one another
	const [instanceId] = useState(() => Symbol('instance-id'))

	const router = useRouter()

	const reorderItem = useCallback(
		({
			startIndex,
			indexOfTarget,
			closestEdgeOfTarget,
		}: {
			startIndex: number
			indexOfTarget: number
			closestEdgeOfTarget: Edge | null
		}) => {
			const finishIndex = getReorderDestinationIndex({
				startIndex,
				closestEdgeOfTarget,
				indexOfTarget,
				axis: 'vertical',
			})

			if (finishIndex === startIndex) {
				// If there would be no change, we skip the update
				return
			}

			setListState((listState) => {
				const item = listState.items[startIndex]

				return {
					items: reorder({
						list: listState.items,
						startIndex,
						finishIndex,
					}),
					lastCardMoved: {
						item,
						previousIndex: startIndex,
						currentIndex: finishIndex,
						numberOfItems: listState.items.length,
					},
				}
			})
		},
		[]
	)

	useEffect(() => {
		return monitorForElements({
			canMonitor({ source }) {
				return isItemData(source.data) && source.data.instanceId === instanceId
			},
			onDrop({ location, source }) {
				const target = location.current.dropTargets[0]
				if (!target) {
					return
				}

				const sourceData = source.data
				const targetData = target.data
				if (!isItemData(sourceData) || !isItemData(targetData)) {
					return
				}

				const indexOfTarget = items.findIndex(
					(item) => item.id === targetData.item.id
				)
				if (indexOfTarget < 0) {
					return
				}

				const closestEdgeOfTarget = extractClosestEdge(targetData)

				reorderItem({
					startIndex: sourceData.index,
					indexOfTarget,
					closestEdgeOfTarget,
				})
			},
		})
	}, [instanceId, items, reorderItem])

	// cleanup the live region when this component is finished
	useEffect(() => {
		return function cleanup() {
			liveRegion.cleanup()
		}
	}, [])

	const getListLength = useCallback(() => items.length, [items.length])

	const contextValue: ListContextValue = useMemo(() => {
		return {
			registerItem: registry.register,
			reorderItem,
			instanceId,
			getListLength,
		}
	}, [registry.register, reorderItem, instanceId, getListLength])

	const handleSave = async () => {
		setLoading(true)
		let listArray: number[] = []
		items.forEach((item: Post) => {
			listArray.push(item.id)
		})

		const { status } = await updateTopList({
			list,
			newList: listArray,
		})

		if (status === 'success') {
			if (list === 'list_anime_top') {
				return router.push(`/anime`)
			}
			if (list === 'list_movies_top') {
				return router.push(`/top/movie`)
			}
			if (list === 'list_series_top') {
				return router.push(`/top/tv`)
			}

			return router.push(`/`)
		} else {
			console.log('error')
		}

		setLoading(false)
	}

	return (
		<>
			<div className="mb-4 flex items-center justify-between border-b-2 border-dashed border-muted pb-4">
				<div className="px-1.5">Order</div>
				{!loading ? (
					<Button onClick={handleSave} variant={'ghost'} className="gap-2">
						<DownloadCloud strokeWidth={1.5} className="h-6 w-6" />
						Save
					</Button>
				) : (
					<div className="flex h-10">
						<Loader />
					</div>
				)}
			</div>

			<div className="divide-y-2 divide-dashed">
				<ListContext.Provider value={contextValue}>
					{items.map((item, index) => (
						<ListItem
							key={item.id}
							item={item}
							index={index}
							position={getItemPosition({ index, items })}
						/>
					))}
				</ListContext.Provider>
			</div>
		</>
	)
}
