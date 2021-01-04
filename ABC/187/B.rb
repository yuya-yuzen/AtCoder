n = gets.to_i
x = []; y = []
n.times do
    a, b = gets.split.map(&:to_i)
    x << a; y << b
end

count = 0
(0..(n-2)).each do |i|
    (i..(n-1)).each do |j|
        x1 = x[i]; y1 = y[i]
        x2 = x[j]; y2 = y[j]
        m = 1.0 * (y2 - y1) / (x2 - x1)
        count += 1 if -1 <= m && m <= 1
    end
end

puts count
