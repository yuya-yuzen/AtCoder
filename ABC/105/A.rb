input = gets.chomp.split
n = input[0].to_i
k = input[1].to_i
puts n % k == 0 ? 0 : 1