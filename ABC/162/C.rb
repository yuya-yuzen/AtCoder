k = gets.to_i
sum = 0
(1..k).each do |i|
    (1..k).each do |j|
        (1..k).each do |k|
            sum += k.gcd(i.gcd(j))
        end
    end
end
puts sum
