def chain_length(num)
	length = 1
	until num == 1 do
		if num.even?
			num = num/2
		else
			num = 3*num + 1
		end
		length += 1
	end
	return length
end

max_length = [0, 0]

for i in 1..1000000000 do
	length = chain_length(i)
	if length >= max_length[0]
		max_length[0] = length
		max_length[1] = i
	end
end

puts max_length