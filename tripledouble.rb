##Using the Ruby language, have the function TripleDouble(num1,num2) take both
##parameters being passed, and return 1 if there is a straight triple of a
##number at any place in num1 and also a straight double of the same number in
##num2.

##For example: if num1 equals 451999277 and num2 equals 41177722899, then return
##1 because in the first parameter you have the straight triple 999 and you have
##a straight double, 99, of the same number in the second parameter. If this
##isn't the case, return 0.

def triple_double (num1, num2)
  trip_switch = 0
  doub_switch = 0
  num1 = num1.to_s.split("")
  i = 2
  while i < num1.length
    triple_arr = []
    triple_arr << num1[i - 2] << num1[i - 1] << num1[i]
    #puts(triple_arr)
    if triple_arr == [num1[i],num1[i],num1[i]]
      trip_switch = 1
      break
    end
    i += 1
  end
  if trip_switch == 0
    return 0
  end

  num2 = num2.to_s.split("")
  j = 1



  while j < num2.length
    double_arr = []
      double_arr << num2[j - 1] << num2[j]
    if double_arr == [num2[j],num2[j]] && num2[j] == num1[i]
      doub_switch = 1
      break
    end
    j += 1
  end

  if doub_switch == 1 && trip_switch == 1
    return 1
  else
    return 0
  end
end

puts( triple_double(111,11) )
puts( triple_double(10010111,22211))
puts( triple_double(100,21))
