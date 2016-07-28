class OrangeTree

	def initialize name
		@name = name
		@height = 0
		@age = 0
		@orangeCount = 0
		@make_orange_speed = 0
		@alive = true
	end

	def height
		puts "#{@name}'s height is " + @height.to_s
	end

	def age
		puts "#{@name}'s age is " + @age.to_s
	end

	def oneYearPasses
		if @age > 10
			@alive = false
			puts "Sorry. Your tree has died"
			exit
		end
		@age = @age + 1
		@height = @height + (1 + rand(2))
		@orangeCount = 0
		if @age > 3
		@make_orange_speed = @age
		@orangeCount = @orangeCount + @make_orange_speed
		end
	end

	def countTheOranges
		puts "#{@name} currently has " + @orangeCount.to_s + " oranges."
	end

	def pickAnOrange
		if @orangeCount > 0
		@orangeCount = @orangeCount - 1
		puts "Wow. That orange was delicious! Yum!"
		else
		puts "Sorry. This tree does not have oranges yet!"
		end
	end
end

myOrangeTree = OrangeTree.new 'Orangee'
myOrangeTree.height
myOrangeTree.age
myOrangeTree.countTheOranges
myOrangeTree.pickAnOrange
myOrangeTree.oneYearPasses
myOrangeTree.height
myOrangeTree.age
myOrangeTree.countTheOranges
myOrangeTree.pickAnOrange
myOrangeTree.oneYearPasses
myOrangeTree.oneYearPasses
myOrangeTree.oneYearPasses
myOrangeTree.oneYearPasses
myOrangeTree.height
myOrangeTree.age
myOrangeTree.countTheOranges
myOrangeTree.pickAnOrange
myOrangeTree.oneYearPasses
myOrangeTree.pickAnOrange
myOrangeTree.pickAnOrange
myOrangeTree.countTheOranges
myOrangeTree.oneYearPasses
myOrangeTree.countTheOranges
myOrangeTree.oneYearPasses
myOrangeTree.countTheOranges
myOrangeTree.oneYearPasses
myOrangeTree.countTheOranges
myOrangeTree.oneYearPasses
myOrangeTree.countTheOranges
myOrangeTree.oneYearPasses
myOrangeTree.countTheOranges
myOrangeTree.oneYearPasses
myOrangeTree.countTheOranges
myOrangeTree.oneYearPasses
myOrangeTree.age