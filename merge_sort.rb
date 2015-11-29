##Description: Create a merge sort algorithm

def merge_sort(arr)

  def sorted?(arr)
    bin = 0
    arr.each_with_index do |element,i|
      if element < arr[i-1]
        return false
      end
    end
    return true
  end

  i = 0
  grouper = []
  while i < arr.length
    grouper << [arr[i], arr[i+1]]
    i += 2
  end

  if arr % 2 == 1
    modified = grouper.pop << arr[-1]
    grouper << modified
  end
  i = 0
  mover = 0
  ## basic pairs
  while i < grouper.length
    j = 0
    while j < grouper[i].length
      if grouper[j] > grouper[j+1]
        mover = grouper[j]
        grouper[j] = grouper[j+1]
        grouper[j+1] = mover
      end
      j += 1
    end
    i += 1
  end

  ## merge sort begins

  i = 0
  new_grouper = []
  while i < grouper.length
    j = 0
    z = 0
    while j < (grouper[i].length + grouper[i+1].length)
      while z < (grouper[i].length + grouper[i+1].length)
        if grouper[i][j] < grouper[i+1][z]
          new_grouper << gr




end
