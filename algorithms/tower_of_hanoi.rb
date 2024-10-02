def tower_of_hanoi(n, source, auxiliary, target)
  if n == 1
    puts "Move disk 1 from #{source} to #{target}"
    return
  end

  # move n - 1 disk from souce to auxiliary using target as temporary tower
  tower_of_hanoi(n - 1, source, target, auxiliary)

  # move the nth disk from source to target
  puts "Move disk #{n} from #{source} to #{target}"

  # move n - 1 disks from auxiliary to target using source as temporary tower
  tower_of_hanoi(n - 1, auxiliary, source, target)
end

n = 3 # number of towers
puts tower_of_hanoi(n, 'A', 'B', 'C') # A, B and C are names of the towers