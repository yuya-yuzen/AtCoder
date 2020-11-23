n = gets.chomp.to_i
blackbord = Array.new(1000005, 0)
n.times do
    a, b = gets.chomp.split.map(&:to_i)
    blackbord[a] += 1
    blackbord[b+1] -= 1
end
plus_count = 0
sum = 0
blackbord.length.times do |i|
    plus_count += blackbord[i]
    sum += i*plus_count
end
puts sum
