nx = gets.chomp.split
n = nx[0].to_i
x = nx[1].to_i.to_s(2).reverse
a = gets.chomp.split

sum = 0
n.times do |i|
    sum += a[i].to_i if x[i] == "1"
end

puts sum
