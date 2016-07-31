class Timer
  #write your code here
attr_accessor :seconds, :minutes, :hours

def initialize
	@seconds = 0
	@minutes = 0
	@hours = 0
end

def time_string

	if @seconds >= 3600
	@hours = @seconds / 3600
	@hours = @hours.floor
	@seconds = @seconds - (@hours * 3600)
	end
	if @seconds >= 60
	@minutes = @seconds / 60
	@minutes = @minutes.floor
	@seconds = @seconds - (@minutes * 60) 
	end

	return padded(@hours) + ":" + padded(@minutes) + ":" + padded(@seconds)
end

def padded(num)
	return num.to_s.rjust(2,'0')
end

end
