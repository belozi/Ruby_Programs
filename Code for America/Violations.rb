require 'csv'

violations = {}

CSV.foreach('Violations-2012.csv') do |col|
	violations[col[2]] ||= 0
	violations[col[2]] += 1
end

violations.each do |key, count|
	puts "#{key}: #{count}"
end


