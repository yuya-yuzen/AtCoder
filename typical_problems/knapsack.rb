# 問題
# N個の荷物と許容重量Wのナップサックがある。
# i(1 <= i <= N)番目の荷物は、
# 価値がviで重さがwiである。
# 重さの和がW以下となるように荷物の集合を選ぶとき、
# 価値の和の最大値を求めよ。
# ただし、同じ荷物は一度しか選べない。

# 入力
# N W
# v1 w1
# v2 w2
# :
# vn wn

# 入力を受け取る
nw = gets.chomp.split.map(&:to_i)
n = nw[0]
w = nw[1]
vw_a = []
n.times do
    vw_a << gets.chomp.split.map(&:to_i)
end

# 重さごとに価値の最大値を格納する配列
dp = Array.new(w+1, 0)

vw_a.each do |vw|
    value = vw[0]
    weight = vw[1]
    if weight <= w && value > dp[weight]
        dp[weight] = value
    end
    (1..w).each do |i|
        if i != weight && dp[i] != 0 && i+weight <= w
            dp[i+weight] += value
        end
    end
end

# 最大値を出力
puts dp.max
