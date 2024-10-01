def selection_sort(arr)
	n = arr.length
	
	(0...n-1).each do |i|
		min_idx = i
			(i+1...n).each do |j|
				if arr[j] < arr[min_idx]
					min_idx = j
				end
			end
		if min_idx != i
			arr[min_idx], arr[i] = arr[i], arr[min_idx]
		end
	end
	return arr
end

arr = [45, 56, 67, 34, 23, 45, 75, 31, 43, 78]
puts selection_sort(arr)
