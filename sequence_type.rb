def geo_sequence?(arr)
	if arr.length < 1
		return nil
	end
	i = 1
	common_var = arr[i] / arr[i-1]
	while i < arr.length
		if (arr[i] / arr[i-1]) != common_var || (arr[i] % arr[i-1]) != 0
			return false
		end
		i+=1
	end
	return true
end

def arith_sequence?(arr)
	if arr.length < 1
		return nil
	end
	i = 1
	common_var = arr[i] - arr[i-1]
	while i < arr.length
		if (arr[i] - arr[i-1]) != common_var
			return false
		end
		i+=1
	end
	return true
end

def sequence_type(arr)
	geo = geo_sequence?(arr)
	arith = arith_sequence?(arr)
	
	if geo == true
		return "Geometric sequence"
	elsif arith == true
		return "Arithematic sequence"
	elsif arith == nil && geo == nil
		return "Array input too short"
	elsif arith == false && geo == false
		return "Neither geometric or arithematic sequence detected"
	else
		return "Error"
	end
end

puts sequence_type([1,3,5,7,9])

puts sequence_type([1,4,7,10,11])

puts sequence_type([2,4,8,16,32])

puts sequence_type([3,6,12,24,48])

puts sequence_type([2,6,5,10,48])