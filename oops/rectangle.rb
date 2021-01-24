# Implement a rectangle class, create accessor for area, and setter for length and breadth

class Rectangle
    attr_accessor :area
    attr_writer :length, :breadth

    def initialize(length=0, breadth=0)
        @length = length
        @breadth = breadth
    end

    def calculate_area
        @area = @length * @breadth
    end
end

rect = Rectangle.new(50, 25)
rect.calculate_area
puts "Rectangle 1: #{ rect.area }"

rect2 = Rectangle.new
rect2.length = 40
rect2.breadth = 60
rect2.calculate_area
puts "Rectangle 2: #{ rect.area }"
