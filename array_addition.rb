##Description: For this challenge you will determine if numbers in an array
## can add up to a certain number in the array.


def arr_addition(arr)
	arr.flatten!
	i = 0
	count = 0
	pairs = []
	while count < arr.length	
		while i < arr.length
			j = i + 1
			while j < arr.length
				if arr[count] == (arr[i] + arr[j])
					pairs << [arr[i],arr[j]]
				end
				j += 1
			end
			i += 1
		end
		count += 1
		i = 0
	end
	
	return pairs.uniq!
end

puts(arr_addition([[1,1],[2,2],[3,3]]))
			
				 
			
		
			

