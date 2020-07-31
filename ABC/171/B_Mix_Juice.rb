nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

p_a = gets.chomp.split
n.times do |i|
    p_a[i] = p_a[i].to_i
end

p_a.sort!

sum = 0
k.times do |i|
    sum += p_a[i]
end

puts sum
