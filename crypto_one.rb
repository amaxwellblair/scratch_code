## Description: Using the Ruby language, have the function LookSaySequence(num)
## take the num parameter being passed and return the next number in the
## sequence according to the following rule: to generate the next number in a
## sequence read off the digits of the given number, counting the number of
## digits in groups of the same digit. For example, the sequence beginning with
## 1 would be: 1, 11, 21, 1211, ... The 11 comes from there being "one 1" before
## it and the 21 comes from there being "two 1's" before it. So your program
## should return the next number in the sequence given num.

def crypto_one(num)
  digits = num.to_s.split("").map{|d| d.to_i}
  consecutive = digits[1]
  count = 1
  i = 0
  new_num = []

  while i < digits.length
    ##puts(digits)
    if digits[i] == consecutive
      count += 1
      ##digits.last == digits[i] ? new_num << count << digits[i] : nil
    else
      new_num << count << digits[i]
      count = 1
    end
    i +=1
    consecutive = digits[i+1]
  end
  new_num = new_num.map{|d| d.to_s}.join.to_i
  puts(new_num)
  return new_num
end


puts(crypto_one(122111) == 112231)
puts(crypto_one(2466) == 121426)
