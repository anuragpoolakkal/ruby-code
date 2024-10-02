  def is_prime(num)
    return false if num <= 1

    i = 2
    while i * i <= num
      if num % i == 0
        return false
      end
      i += 1
    end
    return true
    # or, (2..Math.sqrt(num)).none? { |i| num % i == 0 }
  end

  def prime_number(limit)
    number = 2
    while limit > 0
      if is_prime(number)
        puts number
        limit -= 1
      end
      number += 1
    end
  end

  limit = 10
  prime_number(limit)