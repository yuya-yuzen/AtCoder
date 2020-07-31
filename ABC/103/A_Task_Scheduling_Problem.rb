a = gets.chomp.split
a.length.times do |i|
    a[i] = a[i].to_i
end
puts a.max - a.min