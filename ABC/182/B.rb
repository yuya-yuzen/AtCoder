n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
max = 0
result = 0
(2..a.max).each do |i|
    count = 0
    a.each do |j|
        count += 1 if j % i == 0
    end
    if count > max
        max = count
        result = i
    end
end
puts result
