def palindrome?(num)
  num.to_s.reverse == num.to_s
end

n = 998001
i = 999
until n % i == 0 && (n/i).to_s.length == 3 && palindrome?(n) do
	i = 999
	n -= 1 until palindrome?(n)
	puts "Testing: #{n}"
	while i > 100 do
		if n % i == 0 && (n/i).to_s.length == 3
			puts "#{n} is a palindrome made up of %d times %d" % [i, n/i]
		else
			i -= 1
		end
	end
	n -= 1
end