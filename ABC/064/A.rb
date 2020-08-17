# AtCoDeer君は、赤、緑、青色のカードを持っています。
# それぞれのカードには 1 以上 9 以下の整数が書かれており、
# 赤色のカードには r、緑色のカードには g、青色のカードには b が書かれています。
# 3 つのカードを左から順に赤、緑、青色の順に並べ、
# 左から整数を読んだときにこれが 4 の倍数であるか判定しなさい。

rgb = gets.chomp.split
r = rgb[0].to_i
g = rgb[1].to_i
b = rgb[2].to_i

num = r * 100 + g * 10 + b
if num % 4 == 0
    puts "YES"
else
    puts "NO"
end