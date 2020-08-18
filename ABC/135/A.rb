input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

if (a + b) % 2 == 0
    puts (a + b) / 2
else
    puts "IMPOSSIBLE"
end