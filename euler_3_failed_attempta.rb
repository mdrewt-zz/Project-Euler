# trying to find the highest prime factor of a given number 

print "What number would you like to factor? "
num = gets.chomp.to_i	# get the number to find the prime factor of

def fill_array(number)	# creates an array from 2 to that number. Then I'll use a sieve to take out all numbers that aren't prime
	array = []
	for i in 2..number
		array.push(i)
	end
	return array
end

def sieve(number)
	array = fill_array(number)	# array will every number
	primes = []	# The array I'll put my primes in as I find them
	while array.length > 0 do
		num_to_delete = []	# array of all multiples of a prime. The prime is added to the array of primes and then this array is erased from my list

		array.each { |i|
			num_to_delete.push(i) if i % array[0] == 0 
		}

		primes.push(array[0])
		puts array[0]
		array = array - num_to_delete
	end
	return primes
end

prime = sieve(num/2) # The highest possible prime factor cannot be higher than num/2

largest_factor = 0
prime.each { |i|
	largest_factor = i if num % i == 0
}
puts largest_factor