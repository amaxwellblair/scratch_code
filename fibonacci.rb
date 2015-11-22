## Using the Ruby language, have the function FibonacciChecker(num) return the
## string yes if the number given is part of the Fibonacci sequence. This
## sequence is defined by: Fn = Fn-1 + Fn-2, which means to find Fn you add the
## previous two numbers up. The first two numbers are 0 and 1, then comes 1, 2,
## 3, 5 etc. If num is not in the Fibonacci sequence, return the string no.

def fib_checker?(num)

  if num < 0
    puts "Does not compute negative numbers"
  end

  var1, var2, var3 = 0, 1, 1
  while var3 <= num
    if var3 == num
      return true
    end
    var1 = var2
    var2 = var3
    var3 = var1 + var2
  end
  return false
end

puts(fib_checker?(233))
puts(fib_checker?(377))
puts(fib_checker?(10))
