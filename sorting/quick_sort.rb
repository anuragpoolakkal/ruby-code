def partition(arr, low, high)
	pivot = arr[high]
	i = low - 1

	(low...high).each do |index|
		if arr[index] < pivot
			i += 1
			arr[i],arr[index] = arr[index],arr[i]
		end
	end

	arr[i+1],arr[high] = arr[high],arr[i+1]
	return i+1
end

def quick_sort(arr, low, high)
	if low < high
		pi = partition(arr, low, high)

		quick_sort(arr, low, pi-1)
		quick_sort(arr, pi+1, high)
	end
	return arr
end

arr = [45, 56, 67, 34, 23, 45, 75, 31, 43, 78]
puts quick_sort(arr, 0, arr.length - 1)
