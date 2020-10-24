abc = gets.chomp.split
a = abc[0].to_i
b = abc[1].to_i
c = abc[2].to_i

a_plus_b = a + b == c
a_minus_b = a - b == c
both = a_plus_b && a_minus_b
never = !a_plus_b && !a_minus_b

if both
    puts "?"
elsif never
    puts "!"
elsif a_plus_b
    puts "+"
elsif a_minus_b
    puts "-"
end
