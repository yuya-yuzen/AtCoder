input = gets.chomp.split
k = input[0].to_i
x = input[1].to_i

puts 500 * k >= x ? "Yes" : "No"