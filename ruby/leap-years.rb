starting_year = 0
ending_year = 0
between_years = 0

puts "What is the starting year?"

starting_year = gets.chomp

puts "What is the ending year?"

ending_year = gets.chomp

between_years = ending_year.to_i - starting_year.to_i

number_of_years = between_years + 1

number_of_years.times do |counter|
	current_year = starting_year.to_i + counter
	if current_year&100!=0 and current_year%4==0
		puts "Leap year is " + current_year.to_s
	elsif current_year%100==0 and current_year%400==0
		puts "Leap year is " + current_year.to_s
	end
end