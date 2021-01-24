# Write a ruby program to inherit vehicle class in car and bike. no of tyres and total seat count as instance variables and moves as instance method?

class Vehicle
    attr_accessor :no_of_tyres, :total_seats
    
    def initialize(no_of_tyres, total_seats)
        @no_of_tyres = no_of_tyres
        @total_seats = total_seats
    end

    def moves
    end
end

class Car < Vehicle
    def initialize(total_seats)
        super(4, total_seats)
    end

    def moves
        puts "Car moves 60km/hr"
    end
end

class Bike < Vehicle
    def initialize
        super(2, 2)
    end

    def moves
        puts "Bike moves 80km/hr"
    end
end

car = Car.new(6)
car.moves

bike = Bike.new
bike.moves
