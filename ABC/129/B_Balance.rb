n = gets.to_i
w = gets.chomp.split
sum_1 = 0
(n+1).times do |i|
    w[i] = w[i].to_i
    sum_1 += w[i]
end

diffs = []
sum_2 = 0
(n+1).times do |i|
    sum_1 -= w[i]
    sum_2 += w[i]
    diffs << (sum_1 - sum_2).abs
end

puts diffs.min