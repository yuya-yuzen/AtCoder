wab = gets.chomp.split
w = wab[0].to_i
a = wab[1].to_i
b = wab[2].to_i

if a > b
    tmp = b
    b = a
    a = tmp
end

puts a + w < b ?  b - (a + w) : 0
