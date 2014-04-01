def is_prime?(num)
  prime = true;
  for i in 2..((num**0.5).to_i)
  	if num % i == 0 
  		prime = false
  	end
  end
  return prime
end

prime_array = []

for i in 2..20
  prime_array.push(i) if is_prime?(i)
end

multiple = 1

prime_array.each { |i|
  multiple *= i
}

test = multiple
divisible = [false]
while divisible.include? false do
  for i in 1..20
    divisible[i-1] = test % i == 0 ? true : false
  end
  puts "#{test} is divisible by 1 through 20? #{divisible}"
  test += multiple
end