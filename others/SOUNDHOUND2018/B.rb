s = gets.chomp
w = gets.to_i
str = s[0]
w_first = w
while w < s.length
    str += s[w]
    w += w_first
end
puts str
