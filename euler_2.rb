fib = [1, 1, 2]
next_f = 0
until next_f > 4_000_000 do
  fib.push(next_f) if next_f > 0
  next_f = fib[fib.length - 1] + fib[fib.length - 2]
end

sum = 0
fib.each { |i|
	sum = sum + i if i % 2 == 0
}

puts sum

=begin
For improvements consider:
- every 3rd fibonacci number is ever
- (a=1; b=1; c=a+b; while c<limit do sum=sum+c; a=b+c; b=c+a; c=a+b; end;)
- - the numbers follow a recursive formula	
=end