# input is an array and a number. if sum of any two items in array is the number, return true

def sum_of_n?(num, arr)
	return true if arr.empty? && num.zero?
	arr.combination(2).any? {|a,b| a + b == num}
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
puts sum_of_n?(17, arr)
puts sum_of_n?(18, arr)
