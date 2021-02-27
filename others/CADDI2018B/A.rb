n = gets.chomp
count = 0
4.times { |i| count += 1 if n[i] == '2' }
puts count
