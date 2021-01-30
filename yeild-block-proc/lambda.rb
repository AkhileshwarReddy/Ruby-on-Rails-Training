# Implement a Lambda which takes an argument  and returns the output by multiply arg with 2. Call this lambda inside a loop and return modified array 

two_multiple = ->(n) { return n*2 }

b = (1..10).map {|n| two_multiple.call(n) }
puts b
