kn = gets.chomp.split
k = kn[0].to_i
n = kn[1].to_i

a = gets.chomp.split
a[0] = a[0].to_i
distances = []
distance_sum = 0
(n-1).times do |i|
    a[i+1] = a[i+1].to_i
    distance = a[i+1] - a[i]
    distance_sum += distance
    distances << distance
end
distances << (k - a.last + a[0]).abs
distance_sum += (k - a.last + a[0]).abs

puts distance_sum - distances.max