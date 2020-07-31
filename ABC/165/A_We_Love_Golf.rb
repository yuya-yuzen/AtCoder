k = gets.to_i
ab = gets.chomp.split
a = ab[0].to_i
b = ab[1].to_i

result = false
(a..b).each do |i|
    if i % k == 0
        result = true
        break
    end
end

puts result ? "OK" : "NG"