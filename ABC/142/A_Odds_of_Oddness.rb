n = gets.to_f
odd_count = 0
(1..n).each do |num|
    odd_count += 1 if num.odd?
end
puts odd_count / n