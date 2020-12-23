n = gets.to_i
a = gets.chomp.split.map(&:to_i).sort

cumulative_sum = [a.first]
(n - 1).times do |i|
    cumulative_sum << cumulative_sum.last + a[i + 1]
end

sum = 0
(n - 1).times do |i|
    sum += (cumulative_sum.last - cumulative_sum[i]) - (n - i - 1) * a[i]
end

puts sum
