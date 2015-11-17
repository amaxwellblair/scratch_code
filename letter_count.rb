## Description: For this challenge you will determine which word has the greatest number
## of repeated letters

def unique_letter(str)
	word_array = str.split(" ")
	char_array = []
	unique_char = []
	count = 0
	most_word = 0
	most_num = 0
	most_char = ""
	matches = []
	word_array.each do |word|
		char_array << word.chars
	end
	##puts(char_array)
	char_array.each do |chars|
		i = 0

		while i < chars.length
			matches = chars.select{ |c| chars[i] == c }
			if matches.length > most_num
				most_char = matches[0]
				most_num = matches.length
				most_word = count
			end
			i += 1
		end
		count += 1
	end
	##puts (unique_char)
	return [most_char, most_num, word_array[most_word]]

end

puts unique_letter('doog cat weeble chickpee hi there' )
