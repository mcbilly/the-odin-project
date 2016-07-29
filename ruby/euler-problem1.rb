def totalMultiples(number)
	total = number
	sum = 0
	if total < 0
		puts "Sorry. Please only input positive numbers."
	else
		total.times do |num|
			if (num%3==0) || (num%5==0)
				sum = sum + num
			end
		end
		puts "Total sum is " + sum.to_s
	end
end

totalMultiples(10)
totalMultiples(0)
totalMultiples(25)
totalMultiples(-3)
totalMultiples(1000)