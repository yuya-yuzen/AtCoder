input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
k = input[3].to_i

point = 0
ka = k - a
if ka <= 0
    point = k
else
    point = a
    kb = ka - b
    point = a - kb if kb > 0
    end
end

puts point
