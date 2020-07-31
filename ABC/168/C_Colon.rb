input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
h = input[2].to_i
m = input[3].to_i

hour = h / 12.0 + ((m / 60.0) / 12.0)
minute = m / 60.0
diff = (hour - minute).abs
diff = 1 - diff if diff > 1 - diff
angle = diff * 360

puts Math.sqrt(a ** 2 + b ** 2 - 2 * (a * b * Math.cos(angle * Math::PI/180)))