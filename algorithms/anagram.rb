def anagram?(str1, str2)
  # normalize the string by downcasing and removing spaces
  normalized_str1 = str1.downcase.gsub(/\s+/, "")
  normalized_str2 = str2.downcase.gsub(/\s+/, "")

  normalized_str1.chars.sort == normalized_str2.chars.sort
end

str1 = "lobby"
str2 = "bloby"

puts anagram?(str1, str2) ? "Anagram" : "Not anagram"