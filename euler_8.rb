def get_product(array)
	product = 1
	array.each { |i|
		product *= i
	}
	return product
end

def get_array(string, start, length)
	array = []
	for i in start...(start + length) do
		array.push(string[i].to_i)
	end
	return array
end

max_product = 0
puts "What number would you like to check?"
test_number = gets.chomp

for i in 0..995 do
	test_array = get_array(test_number, i, 5)
	test_product = get_product(test_array)

	if max_product <= test_product
		max_product = test_product
	end
end

puts "The largets product of 5 consecutive digits is #{max_product}"