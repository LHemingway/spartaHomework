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

def bmi_calc_met(weight, height)
	sum = weight / height
	actual_bmi = sum / 1.75
	puts actual_bmi
end

def bmi_calc_imp(weight_lb, height_inch)
	sum = weight_lb / height_inch
	actual_bmi = sum / 1.75
	puts actual_bmi
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
	puts "BMI Bitches! You want (i)mperial or (m)etric"
	measure_type = gets.chomp
	if measure_type === "m"
		puts "Enter the weight(kg)"
		weight = gets.chomp.to_f
		puts "Enter the height(M)" 
		height = gets.chomp.to_f
		pure_bmi = bmi_calc_met(weight, height)
	end 
end

if measure_type === "i"
	puts "Enter the weight(lb)"
	weight_lb = gets.chomp.to_f
	puts "Enter the height(inch)" 
	height_inch = gets.chomp.to_f
	pure_bmi = bmi_calc_imp(weight_lb, height_inch)
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
