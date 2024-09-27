def binary_search(num, arr)
  mid = arr.length / 2
  first = 0
  last = arr.length - 1

  while first < last
    if arr[mid] == num
      return mid
    elsif arr[mid] < num
      first = mid + 1
      mid = first + last / 2
    else
      last = mid - 1
      mid = first + last / 2
    end
  end
  return "Not found"
end

arr = [34, 23, 35, 45, 56, 67, 78, 89, 90]
puts binary_search(46, arr)
