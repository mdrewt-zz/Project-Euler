puts "What size grid would you like?"
size = gets.chomp.to_i

grid = []

size**2.times {
	grid.push(nil)
}

for x in 0...size do
	for y in 0...size do
		i = x * (size) + y
		if x == 0 || y == 0
			grid[i] = 1
		else
			grid[i] = grid[i - size] + grid[i - 1]
		end
		puts "The value in #{x}, #{y} is #{grid[i]}"
	end
end