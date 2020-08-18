n = gets.to_i
p_a = []
n.times do
    input = gets.to_i
    p_a << input
end

p_a.sort!.reverse!

sum = p_a.first / 2
(n - 1).times do |i|
    sum += p_a[i + 1]
end

puts sum