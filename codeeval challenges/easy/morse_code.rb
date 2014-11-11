input = File.open(ARGV[0]).readlines

class Translation

	def initialize(line)
		@line = line
	end

	def translation 
		t_word = []
		words = @line.chomp.split('  ')
		words.each do |char|		
			t = char.split
			t.each do |c|
				t_word << translate(c)
			end
			t_word << " "
		end
		return t_word.join
	end

	def translate(char)
		case char
		when ".-"
			return "A"
		when "-..."
			return "B"
		when "-.-."
			return "C"
		when "_.."
			return "D"
		when "."
			return "E"
		when "..-."
			return "F"
		when "--."
			return "G"
		when "...."
			return "H"
		when ".."
			return "I"
		when ".---"
			return "J"
		when "-.-"
			return "K"
		when ".-.."
			return "L"
		when "--"
			return "M"
		when "-."
			return "N"
		when "---"
			return "O"
		when ".--."
			return "P"
		when "--.-"
			return "Q"
		when ".-."
			return "R"
		when "..."
			return "S"
		when "-"
			return "T"
		when "..-"
			return "U"
		when "...-"
			return "V"
		when ".--"
			return "W"
		when "-..-"
			return "X"
		when "-.--"
			return "Y"
		when "--.."
			return "Z"
		when ".----"
			return "1"
		when "..---"
			return "2"
		when "...--"
			return "3"
		when "....-"
			return "4"
		when "....."
			return "5"
		when "-...."
			return "6"
		when "--..."
			return "7"
		when "---.."
			return "8"
		when "----."
			return "9"
		when "-----"
			return "0"
		end
	end
end

input.each do |x|
	y = Translation.new(x)
	puts y.translation
end



