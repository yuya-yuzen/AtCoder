nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

lr_a = []
m.times do
    lr = gets.chomp.split
    2.times do |i|
        lr[i] = lr[i].to_i
    end
    lr_a << lr
end

gates = Array.new(n+1, 0)
m.times do |i|
    (lr_a[i][0]..lr_a[i][1]).each do |j|
        gates[j] += 1
    end
end

puts gates.count(m)