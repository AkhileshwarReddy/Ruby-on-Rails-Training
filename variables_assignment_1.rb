class Add
	B = 2
	def initialize(a)
		@c = 3
		@@d = 4
		puts a + B + @c + @@d
	end
end

Add.new(gets.chomp.to_i)

