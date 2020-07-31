k = gets.to_i

def gcd(a, b)
    return b if a % b == 0
    return gcd(b, (a % b))
end

sum = 0
(1..k).each do |i|
    (1..k).each do |j|
        (1..k).each do |k|
            sum += gcd(gcd(i, j), k)
        end
    end
end

puts sum