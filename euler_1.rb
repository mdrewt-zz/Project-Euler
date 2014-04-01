a = 0
for i in 1..999
	a = a + i if i % 3 == 0 || i % 5 == 0
end

puts a

=begin 
For a more efficient algorithm 
sum(3x) while below 1000 and add to
sum(5x) while below 1000 and subtract 
sum(15) below a thousand
=end