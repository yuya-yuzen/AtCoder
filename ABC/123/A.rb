a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
k = gets.to_i

output = "Yay!"
antennas = [a, b, c, d, e]
antennas_combi = antennas.combination(2)

antennas_combi.each do |antenna_combi|
    if (antenna_combi[0] - antenna_combi[1]).abs > k
        output = ":("
        break
    end
end

puts output