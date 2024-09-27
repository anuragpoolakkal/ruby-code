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
end

arr = [1,6,8,3,0,2,5,3,8,6,3]
quick_sort(arr, 0, arr.length - 1)
puts arr
