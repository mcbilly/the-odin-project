#write your code here
def translate(string)
	input = string
	array_of_words = string.split(" ")
	
	#array_of_words.each do |word|

		array_of_char = input.split""
		runOnce = false
		consonants_before_vowel = ""
		output = ""

		array_of_char.each_with_index do |char, index|
			if char == 'a' || char == 'e' || char == 'i' || char == "o" || char == "u"
				if index == 0
					runOnce = true
				elsif runOnce == false
				consonants_before_vowel = input[0...index]
				runOnce = true
				end
			end
			output = output + char
		end
		
		if consonants_before_vowel != ""
				output = output[consonants_before_vowel.length,output.length]
		end
		
		output = output + consonants_before_vowel + "ay"
	#end

	return output
end