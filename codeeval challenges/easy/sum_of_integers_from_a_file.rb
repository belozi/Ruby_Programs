input = File.open(ARGV[0]).readlines
numbers = []
total = 0
input.each do |num|
	x = num.to_i
	numbers << x
end

numbers.each do |i|
	total += i
end

print total


