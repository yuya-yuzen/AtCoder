nt = gets.chomp.split
n = nt[0].to_i
t = nt[1].to_i
a = []
n.times do
    a << gets.chomp.to_i
end

total_time = 0
(n-1).times do |i|
    if a[i+1] - a[i] > t
        total_time += t
    else
        total_time += a[i+1] - a[i]
    end
end
puts total_time + t
