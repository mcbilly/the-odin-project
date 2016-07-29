# Euler problem 2 solution sum of even Fibonnaci numbers

def evenFibonacci(limit)
	num1 = 0
	num2 = 1
	num3 = 0
	sum = 0
	while num3 < limit do
		num3 = num1 + num2
		num1 = num2
		num2 = num3
		if num3 < limit && num3%2==0
		sum = sum + num3
		end
	end
	puts "Sum of even valued Fibonacci numbers are " + sum.to_s
end

evenFibonacci(100)
evenFibonacci(4000000)