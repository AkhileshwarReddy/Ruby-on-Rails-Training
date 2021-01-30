# Create a ruby block which takes an argument and multiply with 2

def greet
    yield 'hello'
end

greet { |x| puts x }
