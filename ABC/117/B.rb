# 2 次元平面上に辺の長さがそれぞれ L1,L2,...,LN の
# N 角形(凸多角形でなくてもよい)が描けるかを判定してください。
# ここで、次の定理を利用しても構いません。
# 定理 : 一番長い辺が他の N−1 辺の長さの合計よりも真に短い場合に限り、条件を満たす N 角形が描ける。

n = gets.to_i
l = gets.chomp.split
n.times do |i|
    l[i] = l[i].to_i
end

max = l.max
sum = 0
n.times do |i|
    sum += l[i]
end
sum -= max

if max < sum
    puts "Yes"
else
    puts "No"
end