abck = gets.chomp.split
4.times do |i|
    abck[i] = abck[i].to_i
end

a = abck[0]
b = abck[1]
c = abck[2]
k = abck[3]

st = gets.chomp.split
2.times do |i|
    st[i] = st[i].to_i
end

s = st[0]
t = st[1]

money = s * a + t * b
money -= (s + t) * c if s + t >= k

puts money
