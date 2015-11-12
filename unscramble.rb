##Description: For this challenge you will determine if string 1 can be rearranged into string 2.

def unscrambler(str1,str2)
	if str1.chars.sort.join == str2.chars.sort.join
		return true
	else
		return false
	end
	
end

puts unscrambler("ac","ac ot")

