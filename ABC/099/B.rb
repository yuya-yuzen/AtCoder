ab = gets.chomp.split
a = ab[0].to_i
b = ab[1].to_i
puts (b - a) * (b - a + 1) / 2 - b