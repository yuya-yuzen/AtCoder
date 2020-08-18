n = gets.to_i
st = gets.chomp.split
s = st[0]
t = st[1]

str = String.new
n.times do |i|
    str += s[i] + t[i]
end

puts str