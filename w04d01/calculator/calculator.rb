def add_numbers(num1, num2)
	puts num1 + num2
end

def subtract_numbers(num1, num2)
	puts num1 - num2
end

def multiply_numbers(num1, num2)
	puts num1 * num2
end

def divide_numbers(num1, num2)
	puts num1 / num2
end

puts "Pick a calculator type (b)asic or (a)dvanced"
calc_type = gets.chomp

if (calc_type === "b")
	puts "basic baby"
	puts "Enter the first number" 
	num1 = gets.chomp.to_f
	puts "Enter the second number"
	num2 = gets.chomp.to_f
	puts "Enter your operand"
	operand = gets.chomp
elsif (calc_type === "a")

	
end

if operand === "+"
	add_numbers(num1, num2)
elsif operand === "-"
	subtract_numbers(num1, num2)
elsif operand === "/"
	divide_numbers(num1, num2)
elsif operand === "*"
	multiply_numbers(num1, num2)
else puts "You dun goofed"
end

# 	case operand
# 		when operand === "+"
# 			sum = num1 + num2
# 			puts sum
# 		when operand === "-"
# 			sum = num1 - num2
# 			puts sum
# 		when operand === "/"
# 			sum = num1 / num2
# 			puts sum
# 		when operand === "*" 
# 			sum = num1 * num2
# 			puts sum
# 		else
# 			puts "You dun goofed"
# 	end



	
# elsif (calc_type == "a")
# 	puts "advanced asshole"
# else 
# 	puts "you dun goofed"
# end
