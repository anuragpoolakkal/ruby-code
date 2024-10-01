def insertion_sort(arr)
  n = arr.length

  (1...n).each do |i|
    key = arr[i]
    j = i - 1

    while j >= 0 && arr[j] > key
      arr[j+1] = arr[j]
      j -= 1
    end

    arr[j+1] = key
  end
  return arr
end

arr = [45, 56, 67, 34, 23, 45, 75, 31, 43, 78]
puts insertion_sort(arr)