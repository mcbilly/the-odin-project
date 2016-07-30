#write your code here
def echo(message)
	return message
end

def shout(message)
	return message.upcase
end

def repeat(message, num=2)
	repeat = "#{message} " * num
	return repeat.strip
end

def start_of_word(string, num=1)
	return string[0...num]
end

def first_word(string)
	return string.split.first
end

def titleize(string)
	words = string.split
	titleize = ''
	words.each do |each_word|
		if each_word == 'and'
		titleize = titleize + each_word + ' '
		elsif each_word == 'the'
		titleize = titleize + each_word + ' '
		elsif each_word == 'over'
		titleize = titleize + each_word + ' '
		else
		titleize = titleize + each_word.capitalize + ' '
		end
	end
	return titleize.slice(0,1).capitalize + titleize.slice(1..-1).strip
end