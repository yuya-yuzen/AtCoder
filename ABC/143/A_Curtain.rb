input = gets.chop.split
a = input[0].to_i
b = input[1].to_i

if a <= b * 2
    puts 0
else
    puts a - (b * 2)
end