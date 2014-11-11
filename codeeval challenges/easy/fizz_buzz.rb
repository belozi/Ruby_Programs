File.open(ARGV[0]).each_line do |line|
	input = line.split 
	x = input[0].to_i
	y = input[1].to_i
	n = input[2].to_i

	output = []

	for i in 1..n do 
	
		if i % x == 0 && i % y == 0
			output << "FB"		
		elsif i % x == 0
			output << "F"
		elsif i % y == 0
			output << "B"
		else
			output << "#{i}"
		end
	end

	fb = output.join(" ")
	puts fb

end

