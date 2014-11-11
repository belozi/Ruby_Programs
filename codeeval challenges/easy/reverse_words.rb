File.open(ARGV[0]).each_line do |line|
  rev_line = line.split.reverse.join(' ')
  return rev_line
end