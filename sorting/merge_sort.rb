def merge(arr, left, mid, right)
  left_size = mid - left + 1 # size of left subarray
  right_size = right - mid # size of right subarray

  # create temporary arrays
  temp_left = Array.new(left_size)
  temp_right = Array.new(right_size)

  # copy data to temporary arrays
  (0...left_size).each do |i|
    temp_left[i] = arr[left + i]
  end

  (0...right_size).each do |j|
    temp_right[j] = arr[mid + 1 + j]
  end

  i = 0 # index of first array
  j = 0 # index of second array
  k = left # initial index of merged subarray

  while i < left_size && j < right_size
    if temp_left[i] <= temp_right[j]
      arr[k] = temp_left[i]
      i += 1
    else
      arr[k] = temp_right[j]
      j += 1
    end
    k += 1
  end

  # copy remaining element of temp_left if there are any
  while i < left_size
    arr[k] = temp_left[i]
    i += 1
    k += 1
  end

  # copy remaining element of temp_right if there are any
  while j < right_size
    arr[k] = temp_right[j]
    j += 1
    k += 1
  end

end

def merge_sort(arr, left, right)
  if left < right
    mid = left + (right - left) / 2

    # sort first and second halves
    merge_sort(arr, left, mid)
    merge_sort(arr, mid + 1, right)

    # merge the sorted halves
    merge(arr, left, mid, right)
  end
  return arr
end

arr = [45, 56, 67, 34, 23, 45, 75, 31, 43, 78]
puts merge_sort(arr, 0, arr.length - 1)