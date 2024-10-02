def reverse(str)
  reversed_str = ""
  (str.length - 1).downto(0) do |i|
    reversed_str += str[i]
  end
  return reversed_str
end

str = "hello world"
puts reverse(str)