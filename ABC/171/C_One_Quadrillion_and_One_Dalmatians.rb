n = gets.to_i
alphabets = []
("a".."z").each do |alphabet|
    alphabets << alphabet
end

a_26 = [0, 26]
loop do
    a_26 << a_26.last * 26 + a_26.last
    break if a_26.last > 1000000000000001
end

ruijo = 0
n.times do |i|
    if n <= a_26[i]
        ruijo = i + 1
        break
    end
end

str = ""
(0..(ruijo - 2)).each do |i|
    index = (n % 26) - 1
    n -= 1
    str += alphabets[index].to_s
    n /= 26
end
puts str.reverse
