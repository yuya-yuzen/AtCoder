n = gets.chomp.to_i
a = []
(1..n**0.5).each do |i|
    if n % i == 0
        a << i
        a << n/i
    end
end
puts a.uniq.sort
