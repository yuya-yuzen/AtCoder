x, y = gets.chomp.split.map(&:to_i)
length = 0
while x <= y
    length += 1
    x *= 2
end
puts length
