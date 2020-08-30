n = gets.chomp.to_i
arr = gets.chomp.split
comulative_sum = 0
n.times do |i|
    arr[i] = arr[i].to_i
    comulative_sum += arr[i]
end

sum = 0
(0..n-2).each do |i|
    comulative_sum -= arr[i]
    sum += arr[i] * comulative_sum
end
puts sum % (10 ** 9 + 7)
