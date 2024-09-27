# Iterative Approach - Time Complexity: O(n), Space Complexity: O(1)
def iterative_fibonacci(n)
  if n == 0 or n == 1
    return n
  end

  a = 0
  b = 1

  (2...n+1).each do |i|
    a, b = b, a + b
  end
  return b
end

# Recursive Approach - Time Complexity: O(2^n), Space Complexity: O(n)
def recursive_fibonacci(n)
  if n == 0 or n == 1
    return n
  end

  return recursive_fibonacci(n - 1) + recursive_fibonacci(n - 2)
end

# Dynamic Programming (Memoization) - Time Complexity: O(n), Space Complexity: O(n)
def dp_fibonacci(n)
  if n == 0 or n == 1
    return n
  end

  # create an array 'fib' to store fibonacci numbers and store first two elements
  fib = [0, 1]

  (2...n+1).each do |i|
    fib[i] = fib[i-1] + fib[i-2]
  end
  return fib[n]
end

puts iterative_fibonacci(10)
puts recursive_fibonacci(10)
puts dp_fibonacci(10)