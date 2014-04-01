square_of_sum = (101 * 55)**2

sum_of_squares = 0
for i in 1..100
	sum_of_squares += (i**2)
end

puts "#{square_of_sum} - #{sum_of_squares} = "
puts (square_of_sum - sum_of_squares)