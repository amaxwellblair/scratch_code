##Description: For this challenge you will traverse a string searching for all
## the numbers and then you will add them up.

def num_search(str)
  str = str.split(" ").keep_if{|char| char =~ /[0-9]/}
  #puts(str)
  da_sum = str.inject{|sum,n| sum.to_i + n.to_i}
  return da_sum
end

puts(num_search("Hi my name is 001 I love to 100 0002 everywhere! 01"))
