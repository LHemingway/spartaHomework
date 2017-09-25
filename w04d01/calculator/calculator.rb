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

def power_numbers(num1, num2)
	puts num1 ** num2
end

def square_root_numbers(num1)
	puts Math.sqrt(num1)
end

def bmi_calc(weight, height)
	sum = weight / height
	puts sum / 1.75
end


puts "Pick a calculator type (b)asic or (a)dvanced or (bmi)"
calc_type = gets.chomp


if (calc_type === "b")
	puts "basic baby"
	puts "Enter the first number" 
	num1 = gets.chomp.to_f
	puts "Enter the second number"
	num2 = gets.chomp.to_f
	puts "Enter your operand (+, -, *, /)"
	operand = gets.chomp
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

if (calc_type === "a")
	puts "advanced asshole"
	puts "Enter the first number" 
	num1 = gets.chomp.to_f
	puts "Enter the second number"
	num2 = gets.chomp.to_f
	puts "Enter your operand (+, -, *, /) (Advanced only)(**, sq)"
	operand = gets.chomp
end

if operand === "+"
	add_numbers(num1, num2)
elsif operand === "-"
	subtract_numbers(num1, num2)
elsif operand === "/"
	divide_numbers(num1, num2)
elsif operand === "*"
	multiply_numbers(num1, num2)
elsif operand === "**"
	power_numbers(num1, num2)
elsif operand === "sq"
	square_root_numbers(num1)
	else puts "You dun goofed"
end

if (calc_type === "bmi")
	puts "BMI Bitch!"
	puts "Enter the weight(kg)"
	weight = gets.chomp.to_f
	puts "Enter the height(M)" 
	height = gets.chomp.to_f
	bmi_calc(weight, height)
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
