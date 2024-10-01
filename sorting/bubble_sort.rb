def bubble_sort(arr)
  n = arr.length

  (0...n - 1).each do |i|
    swapped = false
    (0...n - i - 1).each do |j|
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
        swapped = true
      end
    end
    unless swapped
        break
    end
  end
  return arr
end

arr = [45, 56, 67, 34, 23, 45, 75, 31, 43, 78]
puts bubble_sort(arr)