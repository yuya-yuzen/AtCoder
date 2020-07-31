nt = gets.chomp.split
n = nt[0].to_i
t = nt[1].to_i

cts = []
n.times do
    ct = gets.chomp.split
    2.times do |i|
        ct[i] = ct[i].to_i
    end
    cts << ct
end

costs = []
n.times do |i|
    if cts[i][1] <= t
        cost = cts[i][0]
        costs << cost
    end
end

puts costs.any? ? costs.min : "TLE"