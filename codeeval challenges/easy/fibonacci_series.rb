nth_fib = File.open(ARGV[0]).readlines

def fibonacci(n)
	if n > 0
		x = 0
		seq = []
		n.times do |z|
			if x == 0
				seq << x
				x += 1
				seq << x
			else
				x = seq[z-1] + seq[z]
				seq << x
			end
		end

		return seq.pop
	elsif n == 0
		return 0
	else
		return "n must be positive"
	end

end

nth_fib.each do |number|
	puts fibonacci(number.chomp.to_i)
end

