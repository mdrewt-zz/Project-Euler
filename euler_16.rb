num = 2**1000
num = num.to_s
num = num.split("")
sum = 0
num.each { |i|
	sum += i.to_i
}
puts sum