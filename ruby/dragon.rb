class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuffInBelly = 0
		@stuffInIntestine = 0

		puts @name + " is born!"
	end

	def feed
		puts "You feed " + @name + "."
		@stuffInBelly = 10
		passageOfTime
	end

	def walk
		puts "You walk " + @name + "."
		@stuffInIntestine = 0
		passageOfTime
	end

	def putToBed
		puts "You put " + @name + " to bed."
		@asleep = true

		3.times do
			if @asleep
			passageOfTime
			end

			if @asleep
			puts @name + " snore, filling up the room with smoke."
			end
		end

		if @asleep
			@asleep = false
			puts @name + " wakes up slowly."
		end
	end

	def toss
		puts "You toss " + @name + " up in the air. He giggles."
		passageOfTime
	end

	def rock
		puts "You rock " + @name + " gently."
		@asleep = true
		puts "He briefly dozes off"
		passageOfTime
		if @asleep
			@asleep = false
			puts "... but wakes up when you stop rocking."
		end
	end

	private

	def hungry?
		@stuffInBelly < 2
	end

	def poopy?
		@stuffInIntestine >= 8
	end

	def passageOfTime
		if @stuffInBelly > 0
			@stuffInBelly -= 1
			@stuffInIntestine += 1
		else
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts @name + " is starving! In desperation, he ate YOU!"
			exit
		end

		if @stuffInIntestine >= 10
			@stuffInIntestine = 0
			puts "Whoops! " + @name + " had an accident..."
		end

		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts @name + "'s stomach grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly"
			end
			puts @name + " does the poopy dance..."
		end
	end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed
