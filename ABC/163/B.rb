nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

a = gets.chomp.split
sum = 0
m.times do |i|
    sum += a[i].to_i
end

puts sum <= n ? (n - sum) : "-1"