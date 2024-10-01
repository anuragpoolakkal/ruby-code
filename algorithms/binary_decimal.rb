def binary_to_decimal(binary) # argument is a binary string
  len = binary.length
  p2 = 1
  num = 0

  (len-1...-1).each do |i|
    if binary[i] == 1
      num = num + p2
    end
    p2 = p2 * 2
  end
  return num
end

puts binary_to_decimal("101011")