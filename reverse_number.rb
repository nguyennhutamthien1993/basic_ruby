def reverse(number)
	n = number.to_s
	n = n.reverse
	return n
end

print "input number : "
val = gets.chomp
p val.class
p reverse (val)

def check_snt(number)
	return false if number < 2

	i = 2;
	while i < Math.sqrt(number) do 
		return false if (number % i == 0)
		i+=1; 
	end
	return true
end

print "input number : "
num = gets.to_i
p check_snt(num)
