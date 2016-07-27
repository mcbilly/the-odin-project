def englishNumber number

	if number < 0 
		return "Please enter a number that is not negative"
	elsif number == 0
		return "zero"
	end

	# special cases

	numString = ""

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

	tensPlace = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

	teensPlace = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'ninteen']

	# for billion

	left = number
	write = left/1000000000
	left = left - (write * 1000000000)

	if write > 0
		billion = englishNumber write
		numString = numString + billion + " billion"
		
		if left > 0
			numString = numString + " "
		end
	end

	# for million

	write = left/1000000
	left = left - (write * 1000000)

	if write > 0
		million = englishNumber write
		numString = numString + million + " million"

		if left > 0
			numString = numString + " "
		end
	end

	# For thousands

	write = left/1000
	left = left - (write * 1000)

	if write > 0
		thousands = englishNumber write
		numString = numString + thousands + " thousand"

		if left > 0
			numString = numString + " "
		end
	end

	# For hundreds

	write = left / 100
	left = left - (write * 100)

	if write > 0
		hundreds = englishNumber write
		numString = numString + hundreds + " hundred"

		if left > 0
			numString = numString + " "
		end
	end

	# for tens

	write = left / 10
	left = left - (write * 10)

	if write > 0

		if write == 1 # teens
			numString = numString + teensPlace[left-1]
			left = 0
		elsif write > 1
			numString = numString + tensPlace[write-1]
		end

		if left > 0
			numString = numString + "-"
		end
	end

	# for ones

	write = left
	left = 0

	if write > 0
		numString = numString + onesPlace[write-1]
	end

return numString
end

# sample entries
puts englishNumber(34)
puts englishNumber(56)
puts englishNumber(12345)
puts englishNumber(22999)
puts englishNumber(309)
puts englishNumber(0)
puts englishNumber(12)
puts englishNumber(17)
puts englishNumber(100)
puts englishNumber(1000)
puts englishNumber(9999999)
puts englishNumber(12000000000)
puts englishNumber(872345672312)
