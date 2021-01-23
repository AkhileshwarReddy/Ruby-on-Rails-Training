require 'prime'

n = gets.chomp.to_i

primes = (2..n).select { |num| num.prime? and num%10 != 7 }
puts primes
