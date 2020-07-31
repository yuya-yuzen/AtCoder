input = gets.chomp.split
h = input[0].to_i
w = input[1].to_i

if h == 1 || w == 1
    area = 1
else
    area = (h * w + 1) / 2
end

puts area