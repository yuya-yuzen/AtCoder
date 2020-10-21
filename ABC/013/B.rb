a = gets.chomp.to_i
b = gets.chomp.to_i
abs = (a - b).abs
puts abs <= 5 ? abs : 10 - abs
