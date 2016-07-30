#write your code here
def add(num1,num2)
	return num1 + num2
end

def subtract(num1,num2)
	return num1 - num2
end

def sum(array_numbers)
	sum = 0
	array_numbers.each do |num|
		sum = sum + num
	end
	return sum
end

def multiply(array_numbers)
	multiple = 1
	array_numbers.each do |num|
		multiple = multiple * num
	end
	return multiple
end

def power(num,power)
	total = 1
	power.times do 
		total = total * num
	end
	return total
end

def factorial(number)
	factorial = 1
	while number > 0
		factorial = factorial * number
		number -= 1
	end
	return factorial
end