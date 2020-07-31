input = gets.chomp.split
w = input[0].to_i
h = input[1].to_i
x = input[2].to_i
y = input[3].to_i

square = w * h / 2.0
multiple = 0
if w / 2.0 == x && h / 2.0 == y
    multiple = 1
end

puts square.to_s + " " + multiple.to_s