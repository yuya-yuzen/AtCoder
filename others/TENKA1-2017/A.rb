s = gets.chomp
count = 0
6.times { |i| count += 1 if s[i] == '1' }
puts count
