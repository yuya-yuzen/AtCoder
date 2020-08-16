# 情報を取得
input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
x = input[2].to_i

puts (b / x) - ((a - 1) / x)