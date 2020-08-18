nd = gets.chomp.split
n = nd[0].to_i
d = nd[1].to_i

count = 0
n.times do
    xy = gets.chomp.split
    x = xy[0].to_i
    y = xy[1].to_i
    if Math.sqrt(x ** 2 + y ** 2) <= d
        count += 1
    end
end

puts count
