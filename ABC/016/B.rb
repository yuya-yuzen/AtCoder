abc = gets.chomp.split
a = abc[0].to_i
b = abc[1].to_i
c = abc[2].to_i

a_plus_b = a + b == c
a_minus_b = a - b == c

if a_plus_b && a_minus_b
    puts "?"
elsif a_plus_b
    puts "+"
elsif a_minus_b
    puts "-"
else
    puts "!"
end
