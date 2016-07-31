class Book
# write your code here
attr_accessor :title

def title
	array_of_words = @title.split(" ")
	full_title = ""
	array_of_small_words = ["and","or","be","the","of","to","in","a","an"]
	array_of_words.each do |word|
		if array_of_small_words.include?(word)
		full_title = full_title + word + " "
		else
		full_title = full_title + word.capitalize + " "
		end
	end
	full_title = full_title.slice(0,1).capitalize + full_title.slice(1..-1).strip
	@title = full_title
end

end
