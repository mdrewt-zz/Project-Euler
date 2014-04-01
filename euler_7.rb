def find_next_prime(prime_array, next_prime)
	is_prime = true
	prime_array.each { |i|
		break if i > (next_prime**0.5)
		if next_prime % i == 0
			is_prime = false
			find_next_prime(prime_array, next_prime + 2)
			break
		end
	}
	if is_prime
		prime_array.push(next_prime)
	end
	return prime_array
end

p_array = [2, 3]
p_next = p_array.last + 2

9999.times do
	p_array = find_next_prime(p_array, p_next)
	p_next = p_array.last + 2
end

puts p_array[10000]