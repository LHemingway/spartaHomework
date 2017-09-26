class Rectangle
	attr_accessor :length, :width

	def initialize(length, width)
		self.length = length
		self.width = width
	end

	def calculate_area
  	self.length * self.width
	end

	def calculate_perimeter
  	(self.length * self.width) * 2
	end

	def describe_rect
		puts "Rectangle"
		puts "Area: #{self.calculate_area} Perimeter: #{self.calculate_perimeter}"
	end
end