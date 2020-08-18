n = gets.to_i
a = gets.chomp.split
boss = Array.new(n+1, 0)

(n-1).times do |i|
    boss[a[i].to_i] += 1
end

n.times do |i|
    puts boss[i+1]
end