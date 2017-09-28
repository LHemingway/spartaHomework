# Squares
require_relative 'square.rb'
require_relative 'rectangle.rb'

side_length = Square.new(5)
rectangle = Rectangle.new(5,10)
side_length.describe_area
side_length.describe_scale
rectangle.describe_rect

