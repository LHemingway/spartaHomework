class Square
	attr_accessor :side_length

	def initialize(length)
		self.side_length = side_length
	end

	def calculate_area
  	self.side_length ** 2
	end

	def calculate_perimeter
  	self.side_length * 4
	end

	def describe_area
		area = calculate_area self.side_length
		perimeter = calculate_perimeter self.side_length
		puts "Area: #{area} Perimeter: #{perimeter}"
	end

	def describe_scale
		scaled_area = calculate_area side_length
		scaled_perimeter = calculate_perimeter side_length
		puts "Area: #{scaled_area} Perimeter: #{scaled_perimeter}"
	end

end