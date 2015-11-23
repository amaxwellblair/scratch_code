#Description: For this challenge you will determine if all the brackets in a
#string are correctly matched up.

def multi_bracket?(str)
  brackets = str.split("").select{|char| char =~ /[\[\]]/}
  brackets.each_with_index do |brack,i|
    if brack == "[" && brackets[i+1] != "]"
      return false
    elsif (brack == "]") && (brackets[i-1] != "[")
      return false
    end
  end
  return true
end

puts( multi_bracket?("[I like coffee][]"))
puts( multi_bracket?("][I like coffee]["))
puts( multi_bracket?("I like coffee][]"))
