## Using the Ruby language, have the function ThreeFiveMultiples(num) return the
## sum of all the multiples of 3 and 5 that are below num. For example: if num
##is 10, the multiples of 3 and 5 that are below 10 are 3, 5, 6, and 9, and
##adding them up you get 23, so your program should return 23. The integer being
##passed will be between 1 and 100.

def threefive(num)

  if num < 1 || num > 100
    return "Number must be between 1-100"
  end
  mult_arr = []
  mult_arr << 0
  i = 0

  while num > i
    if (i % 3) == 0
      mult_arr << i
    elsif (i % 5) == 0
      mult_arr << i
    end
    i += 1
  end
  return mult_arr.inject{|sum,n| sum + n}

end

puts(threefive(6))
puts(threefive(1))
puts(threefive(15))
