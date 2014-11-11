
File.open(ARGV[0]).each_line do |line|
	number = line.to_i
	thousands = number/1000
	output = ""

	if number >= 1000
		output << "M" * thousands
		number -= thousands * 1000
	end

	if number >= 900
		output << "CM"
		number -= 900
	end

	if number >= 500
		output << "D" * (number/500)
		number -= 500
	end

	if number >= 400
		output << "CD"
		number -= 400
	end

	if number >= 100
		output << "C" * (number/100)
		number -= (number/100) * 100
	end

	if number >= 90
		output << "XC"
		number -= 90
	end

	if number >= 50
		output << "L" 
		number -= 50
	end

	if number >= 40
		output << "XL"
		number -= 40
	end

	if number >= 10
		output << "X" * (number/10)
		number -=  (number/10) * 10
	end

	if number == 9
		output << "IX"
		number -= 9
	end

	if number >= 5
		output << "V" 
		number -= 5
	end

	if number >= 4
		output << "IV"
		number -= 4
	end

	if number >= 1
		output << "I" * (number/1)
	end

	puts output
end

