# 数直線上を N+1 回跳ねるボールがあり、
# 1 回目は 座標 D1=0, i 回目は 座標 Di=Di−1+Li−1(2≤i≤N+1) で跳ねます。
# 数直線の座標が X 以下の領域でボールが跳ねる回数は何回でしょうか。

nx = gets.chomp.split
n = nx[0].to_i
x = nx[1].to_i

l = gets.chomp.split
n.times do |i|
    l[i] = l[i].to_i
end

d_array = [0]
(1..n).each do |i|
    d = d_array[i-1]
    d += l[i-1]
    d_array << d
end

count = 0
(n+1).times do |i|
    count += 1 if d_array[i] <= x
end

puts count