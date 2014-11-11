input = File.open(ARGV[0]).readlines

input.each do |line|
	longest_word = ""
	words = line.split
	words.each do |word|
		if word.length > longest_word.length
			longest_word = word
		end
	end

	puts longest_word

end


