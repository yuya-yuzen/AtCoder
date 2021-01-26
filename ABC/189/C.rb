n = gets.to_i
a = gets.split.map(&:to_i)
h = {}
n.times do |i|
    h[i + 1] = a[i]
end

max = 0
(1..n).each do |i|
    min = h[i]
    (i..n).each do |j|
        if h[j] < min
            min = h[j]
        end

        orange = min * (j - i + 1)
        if orange > max
            max = orange
        end
    end
end

puts max
