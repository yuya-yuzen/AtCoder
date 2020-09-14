arr = gets.chomp.split
arr.length.times do |i|
    arr[i] = arr[i].to_i
end

a = arr[0]
b = arr[1]
c = arr[2]
d = arr[3]

puts [a * c, a * d, b * c, b * d].max
