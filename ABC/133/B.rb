nd = gets.chomp.split
n = nd[0].to_i
d = nd[1].to_i

x_a = []
n.times do
    x = gets.chomp.split
    d.times do |i|
        x[i] = x[i].to_i
    end
    x_a << x
end

count = 0
n.times do |i|
    ((i+1)..(n-1)).each do |j|
        sum = 0
        distance = 0
        d.times do |k|
            sum += (x_a[i][k] - x_a[j][k]) ** 2
        end
        distance = Math.sqrt(sum)
        count += 1 if distance % 1 == 0
    end
end

puts count