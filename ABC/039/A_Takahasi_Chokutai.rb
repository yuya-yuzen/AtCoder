abc = gets.chomp.split
a = abc[0].to_i
b = abc[1].to_i
c = abc[2].to_i
puts (a * b) * 2 + (a * c) * 2 + (b * c) * 2
