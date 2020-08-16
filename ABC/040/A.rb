nx = gets.chomp.split
n = nx[0].to_i
x = nx[1].to_i

left = x - 1
right = n - x

puts left < right ? left : right
