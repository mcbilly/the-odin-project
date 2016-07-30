#write your code here
def translate(string)
	input = string
	sentence_output = ""
	array_of_words = string.split(" ")
	
	array_of_words.each do |word|

		array_of_char = word.split""
		runOnce = false
		consonants_before_vowel = ""
		word_output = ""

		array_of_char.each_with_index do |char, index|
			if char == 'a' || char == 'e' || char == 'i' || char == "o" || (char == "u" && word[index-1] != 'q')
				if index == 0
					runOnce = true
				elsif runOnce == false
				consonants_before_vowel = word[0...index]
				runOnce = true
				end
			end
			word_output = word_output + char
		end
		
		if consonants_before_vowel != ""
				word_output = word_output[consonants_before_vowel.length,word_output.length]
		end
		
		word_output = word_output + consonants_before_vowel + "ay"
		sentence_output = sentence_output + word_output + " "
	end

	return sentence_output.strip
end