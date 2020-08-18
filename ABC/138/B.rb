n = gets.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

denominator = 0
n.times do |i|
    denominator += 1.0 / a[i]
end

puts 1.0 / denominator