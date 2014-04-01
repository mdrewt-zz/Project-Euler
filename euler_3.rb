print "What number would you like to factor? "
n = gets.chomp.to_i

def is_prime?(num)
  prime = true;
  for i in 2..((num**0.5).to_i)
  	if num % i == 0 
  		prime = false
  	end
  end
  return prime
end

until is_prime?(n) do
  i = 2
  until ((n % i == 0 && is_prime?(i)) || i > (n**0.5).to_i) do
      i += 1
  end

  n = n / i
  puts "#{i} is a prime factor multiplied by #{n}."
end