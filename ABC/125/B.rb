n = gets.to_i
v = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)

cost_performances = [0]
n.times do |i|
    cost_performance = v[i] - c[i]
    if cost_performance > 0
        cost_performances << cost_performance
    end
end
puts cost_performances.sum
