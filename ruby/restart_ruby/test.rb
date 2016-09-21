def leapYear(num1,num2)
	start_year = num1
	end_year = num2

	for i in start_year.to_i..end_year.to_i
		if (i%100!=0) and (i%4==0)
			puts i.to_s
		elsif (i%100==0 and (i%400==0))
			puts i.to_s
		end
	end

end

puts "Enter start year:"
starting_year = gets.chomp
puts "Enter end year:"
ending_year = gets.chomp

leapYear(starting_year, ending_year)