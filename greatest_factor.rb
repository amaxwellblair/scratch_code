## Description: For this challenge you will determine the Greatest Common Factor 
## between two numbers 
# 24 and 18

def factor(num)
	current_factor = num/2
	factors = []
	factors << num
	while current_factor > 0
		if num%current_factor == 0
			factors << current_factor
			current_factor -= 1
		else
			current_factor -= 1
		end
	end
	
	return factors
end
	

def great_factor(num1,num2)
	num1_factors = factor(num1)
	num2_factors = factor(num2)
	i = 0
	j = 0
	largest_factor = 0
	
	while i < num1_factors.length
	j = 0
		while j < num2_factors.length
			if num1_factors[i] == num2_factors[j]
				if largest_factor < num1_factors[i] 
					largest_factor = num1_factors[i]
				end
			end
			j += 1
		end
		i += 1
	end
	
	return largest_factor
	
end

puts(great_factor(10,99))
		
	
	

