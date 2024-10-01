# to heapify a subtree rooted with node i which is an index in arr[]
def heapify(arr, size, i)
  # initialize largest as root
  largest = i

  left = 2 * i + 1
  right = 2 * i + 2

  # if left child is larger than root
  if left < size && arr[left] > arr[largest]
    largest = left
  end

  # if right is larger than root
  if right < size && arr[right] > arr[largest]
    largest = right
  end

  # if largest is not root
  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]

    # recursively heapify the affected subtree
    heapify(arr, size, largest)
  end
end

def heap_sort(arr, size)
  # build heap (rearrange array)
  (size / 2 - 1).downto(0) do |i|
    heapify(arr, size, i)
  end

  # one by one extract and element from heap
  (size - 1).downto(1) do |i|
    # move current root to end
    arr[0], arr[i] = arr[i], arr[0]

    # call max heapify on the reduced heap
    heapify(arr, i, 0)
  end
  return arr
end

arr = [45, 56, 67, 34, 23, 45, 75, 31, 43, 78]
size = arr.length
puts heap_sort(arr, size)