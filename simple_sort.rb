##Description: For this challenge you will determine how to order an array of
## numbers consecutively.

def simple_sort(arr)
  j = 0
  index = 0
  mover = 0
  stay = 0
  while j < arr.length
    i = 0
    min = arr[j]
    index = j
    while (i + j) < arr.length
      if min > arr[i+j]
        min = arr[i+j]
        index = i + j
      end
      i += 1
    end
    mover = arr[j]
    arr[j] = min
    arr[index] = mover
    j += 1
  end
  return arr
end

puts(simple_sort([3,2,1]))
puts(simple_sort([3,2,1, 48, 100, 10, -1, 0]))
