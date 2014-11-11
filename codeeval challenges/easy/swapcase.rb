input = File.open(ARGV[0]).readlines
input.each do |x|
	puts x.swapcase
end
