def palindrome(str)
  (0...str.length).each do |s|
    if str[s] != str[str.length - 1 - s]
      return "Not Palindrome"
    end
  end
  return "Palindrome"
end

str = "racecar"
puts palindrome(str)