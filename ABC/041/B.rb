abc = gets.split
a = abc[0].to_i % (10 ** 9 + 7)
b = abc[1].to_i % (10 ** 9 + 7)
c = abc[2].to_i % (10 ** 9 + 7)
puts (a * b * c) % (10 ** 9 + 7)
