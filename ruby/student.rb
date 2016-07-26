class Student
	attr_accessor :first_name, :last_name, :primary_phone_number

	def introduction(target)
		puts "Hi #{target}, I'm #{first_name}!"
	end
end

billy = Student.new
billy.first_name = "Billy"
billy.introduction("Katrina")