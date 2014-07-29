
(1..105).each do |x|

	if x % 3 == 0 && x % 5 == 0
		puts "fizzbuzz"
  
	elsif x % 3 == 0
		puts "fizz"
		
	elsif x % 5 == 0
		puts "buzz"
		
	else
		puts x
		
	end
end
	
	
		
	