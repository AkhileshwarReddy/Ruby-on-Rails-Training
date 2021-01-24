# Create a custom DivisionError ruby class and raise the exception for this class while dividing a number with 0

class DivisionError < StandardError
    attr_reader :reason

    def initialize(reason)
        @reason = reason
    end
end

def divide(x, y)
    begin
        raise DivisionError.new "Cannot divide with zero" if y == 0
        result = x/y
    rescue DivisionError => ex
        puts ex.reason
    rescue StandardError => ex
        puts ex.message
    end
end

puts divide(10, 0)
