data = File.open(ARGV[0]).readlines 

output_number = data[0].to_i
lines = data[1..data.length]

lines = lines.sort_by {|x| x.length}


output = lines.pop(output_number).sort { |x,y| y.length <=> x.length}

output.each do |x|
	puts x
end
