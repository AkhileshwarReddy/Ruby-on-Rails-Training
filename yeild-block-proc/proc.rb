# Implement a Proc which takes an argument and multiply with 2. Call this proc inside a loop
two_multiple = proc { |n| puts n*2 }

(1..10).each { |n| two_multiple.call(n) }