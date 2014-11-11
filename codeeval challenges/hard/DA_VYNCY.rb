data = File.open(ARGV[0]).readlines

def Page

	def intitalize(fragments)
		@fragments = fragments
	end
end



data.each do |fragment|
	fragments = fragment.chomp.split(';')
	fragments[0].each_char do |x|
		puts fragments[1].scan(x)
	end
	puts
end