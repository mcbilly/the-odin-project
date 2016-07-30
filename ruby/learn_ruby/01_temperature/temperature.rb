#write your code here
def ftoc(temperature)
	fahrenheit = temperature
	celcius = (fahrenheit - 32) * 0.5556
	return celcius.round(1)
end

def ctof(temperature)
	celcius = temperature
	fahrenheit = (celcius * 1.8) + 32
	return fahrenheit.round(1)
end