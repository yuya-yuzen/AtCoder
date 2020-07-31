input = gets.chomp.split
r = input[0].to_i
d = input[1].to_i
x2000 = input[2].to_i

next_x = x2000
10.times do
    next_x = r * next_x - d
    puts next_x
end