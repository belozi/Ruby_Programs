input = File.open(ARGV[0]).readlines

input.each do |nums|
	numbers = nums.split
	output = []
	numbers.each do |i|
		output << i.to_f
	end
	puts output.sort.join(' ')
end


