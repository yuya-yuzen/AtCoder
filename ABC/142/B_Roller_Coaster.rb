nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

h = gets.chomp.split
n.times do |i|
    h[i] = h[i].to_i
end

count = 0
n.times do |i|
    count += 1 if h[i] >= k
end

puts count