class Cylinder
	def initialize(height, radius)
		@radius = radius
		@height = height
	end

	def calculate_volume
		volume = Math::PI * @radius * 2 * @height
		return volume
	end
end

print "Radius: "
radius = gets.chomp.to_i

print "Height: "
height = gets.chomp.to_i

cylinder = Cylinder.new(height, radius)
puts "Volume: #{cylinder.calculate_volume}"

