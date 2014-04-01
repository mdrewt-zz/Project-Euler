def nth_triangle_number(n)
	sum = 0
	for i in 1..n
		sum += i
	end
	return sum
end

def count_divisors(num)
	divisors = []
	for i in 1..(num**0.5).to_i
		divisors.push(i) if num % i == 0
	end
	if divisors.last**2 == num
		return (divisors.length * 2 - 1) 
	else
		return divisors.length * 2
	end
end

index = 0
while true	
	index +=1
	triangle = nth_triangle_number(index)
	quantity = count_divisors(triangle)
	if quantity >= 500
		break
	end
end

puts index
puts nth_triangle_number(index)