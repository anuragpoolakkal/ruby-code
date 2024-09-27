# Iterative Factorial
def iterative_factorial(n)
  result = 1
  (1...n+1).each do |i|
    result *= i
  end
  return result
end

# Recursive Factorial
def recursive_factorial(n)
  if n == 0 or n == 1
    return 1
  end

  return n * recursive_factorial(n-1)
end

puts iterative_factorial(5)
puts recursive_factorial(5)