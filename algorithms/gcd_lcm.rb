# Greatest Common Divisor (GCD) / Highest Common Factor (HCF). Time complexity: O(log(min(a, b)))
def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  return a
end

# Least Common Multiple (LCM). Time complexity: O(min(a, b))
def lcm(a, b)
  multiple = [a, b].max
  step = multiple

  while true
    if multiple % a == 0 && multiple % b == 0
      return multiple
    else
      multiple += step
    end
  end
end

# LCM using GCD. Time complexity: O(log(min(a, b)))
def lcm_using_gcd(a, b)
  (a * b).abs / gcd(a, b)
end

puts "GCD of 48 and 18 is: #{gcd(48, 18)}"
puts "LCM of 48 and 18 is: #{lcm(48, 18)}"
puts "LCM of 48 and 18 is: #{lcm_using_gcd(48, 18)}"
