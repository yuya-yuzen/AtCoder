n = gets.to_i
h = gets.chomp.split
n.times do |i|
    h[i] = h[i].to_i
end

flowers = Array.new(n, 0)
water = 0
i = 0
while i < n
    if flowers[i] == h[i]
        i += 1
        next
    end

    j = 0
    loop do
        break if flowers[i+j] == h[i+j]
        flowers[i+j] += 1
        j += 1
    end

    water += 1
end

puts water