
count = 0
def linear_search(num, arr)
	arr.each_with_index do |value, index|
		if num == arr[index]
			return index
		end
	end
	return "Not found"
end

arr = [12, 23, 34, 45, 56, 67, 78, 89, 90]
puts linear_search(78, arr)
puts linear_search(54, arr)
