n = gets.chomp.to_i
a = gets.chomp.split
height = 0
min = 0
a[0] = a[0].to_i
(n-1).times do |i|
    a[i+1] = a[i+1].to_i
    min = a[i] if a[i] > min
    if a[i+1] - min < 0
        height += (a[i+1] - min).abs
    end
end
puts height
