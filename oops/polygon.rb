# Implement a class Polygon with square, rectangle, triangle as subclass, Override the area method. 
# Implement the public, protected and private methods in these classes. 
# Implement class methods in each sub class to print the properties of that polygon.

# Area's
# square = side * side
# rectangle = length * breadth
# triangle = (breadth * height)/2

class Polygon
    attr_reader :area

    def area
        @area = 0
    end

    def properties
        puts "Polygon:"
        puts "\tArea: #{@area}"
    end
end

class Square < Polygon
    def initialize(side)
        @side = side
    end

    def calculate_area
        @area = @side * @side
    end

    def properties
        puts "Square:"
        puts "\tSide: #{ @side }"
        puts "\tArea: #{ @area } "
    end
end

class Rectangle < Polygon
    def initialize(length, breadth)
        @length = length
        @breadth = breadth
    end

    def calculate_area
        @area = @length * @breadth
    end

    def properties
        puts "Rectangle:"
        puts "\tLength: #{ @length }"
        puts "\tBreadth: #{ @breadth }"
        puts "\tArea: #{ @area } "
    end
end

class Triangle < Polygon
    def initialize(breadth, height)
        @base = breadth
        @height = height
    end

    def calculate_area
        @area = (@base * @height)/2
    end

    def properties
        puts "Triangle:"
        puts "\tBase: #{ @base }"
        puts "\tHeight: #{ @height }"
        puts "\tArea: #{ @area } "
    end
end

square = Square.new(50)
square.calculate_area
square.properties

rectangle = Rectangle.new(20, 30)
rectangle.calculate_area
rectangle.properties

triangle = Triangle.new(10, 7)
triangle.calculate_area
triangle.properties
