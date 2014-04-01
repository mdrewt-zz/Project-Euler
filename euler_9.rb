require 'benchmark'

puts "What does the triplet sum to?"
sum = gets.chomp.to_i

puts Benchmark.measure {

half_sum = sum/2
found = false
pa = 0
pb = 0
pc = 0
index = 0

for a in 1..(half_sum) do
	if found
		#break
	end
	for b in a..(half_sum - a/2) do
		index += 1
		if (sum - (a+b))**2 == a**2 + b**2
			found = true
			c = sum - (a + b)
			puts index
			puts "A Pythagorean triplet that adds to #{sum} is #{a}, #{b}, and #{c}"
			puts "The product of the triplet is #{a * b * c}"
			#break
		end
	end
end

puts index
}