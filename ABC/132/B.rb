n = gets.to_i
p_a = gets.chomp.split
n.times do |i|
    p_a[i] = p_a[i].to_i
end

count = 0
(n-2).times do |i|
    if (p_a[i] <= p_a[i+1] && p_a[i+1] <= p_a[i+2]) || (p_a[i+2] <= p_a[i+1] && p_a[i+1] <= p_a[i])
        count += 1
    end
end

puts count