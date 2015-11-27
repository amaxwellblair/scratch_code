##Description: Create a merge sort algorithm

def merge_sort(arr)

  half = arr.length / 2
  half_arr = []
  mover = 0
  while half < 2
    half_arr.shift(half)
    half = half / 2
  end



  half_arr.each do |h|
    i = 0
    count = 0
    while count < arr.length
      while i < h
        if arr[i] > arr[i+1]
          mover = arr[i]
          arr[i]=arr[i+1]
          arr[i+1]=mover
        end
        i += 1
      end
      count += h
    end
  end




end
