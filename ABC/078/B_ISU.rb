xyz = gets.chomp.split
x = xyz[0].to_i
y = xyz[1].to_i
z = xyz[2].to_i

chair = x - z
one_width = y + z
people = 0
while chair >= one_width
    chair -= one_width
    people += 1
end

puts people