input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

if a - b > c
    puts 0
else
    puts c - (a - b)
end