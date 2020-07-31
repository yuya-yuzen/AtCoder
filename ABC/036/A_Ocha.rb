ab = gets.chomp.split
a = ab[0].to_i
b = ab[1].to_i
box = b / a
puts b % a > 0 ? box + 1 : box
