class Die

	def initialize
		roll
	end

	def roll
		@numberRolled = 1 + rand(6)
	end

	def showing
		@numberRolled
	end

end

puts Die.new.showing