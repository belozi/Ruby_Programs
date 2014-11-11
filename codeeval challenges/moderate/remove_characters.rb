File.open(ARGV[0]).each_line do |line|
	data = line.chomp.split(',')
	delete = data[1].lstrip	
	puts data[0].gsub(/["#{delete}"]/, '')
end
