class Die

	def initialize
		roll
	end

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		@numberShowing
	end

	def cheat number
		@numberShowing = number
	end

end

puts Die.new.showing
puts Die.new.cheat(3)
puts Die.new.cheat(4)