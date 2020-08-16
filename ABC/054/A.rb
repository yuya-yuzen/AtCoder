ab = gets.chomp.split
a = ab[0].to_i
b = ab[1].to_i

if a == b
    puts "Draw"
elsif a == 1
    puts "Alice"
elsif b == 1
    puts "Bob"
else
    puts a > b ? "Alice" : "Bob"
end
