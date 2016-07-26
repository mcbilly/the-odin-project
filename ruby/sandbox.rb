puts "Infinity and beyond"

input = []

input.push(gets.chomp)

while input.last != ""

	input.push(gets.chomp)

end

puts input.sort.join(', ')