def grandfatherClock &block
	hoursPast = (Time.now.hour + 1)/2
	if hoursPast > 0
		hoursPast.times do			
			block.call
		end
	end
end

grandfatherClock do 
	puts 'DONG!'
end

puts (Time.now.hour + 1)/2