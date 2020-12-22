n = gets.to_i

count = 0
(1..n).each do |num|
    next if num.to_s.include?('7') || num.to_s(8).include?('7')
    count += 1
end

puts count
