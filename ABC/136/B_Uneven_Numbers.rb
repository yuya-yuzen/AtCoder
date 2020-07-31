n = gets.to_i
count = 0
(1..n).each do |num|
    count += 1 if num.to_s.length.odd?
end
puts count