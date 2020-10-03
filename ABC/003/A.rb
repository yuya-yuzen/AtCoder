n = gets.chomp.to_i
sum = 0
(1..n).each do |i|
    sum += 10000 * i
end
ave = sum / n
puts ave
