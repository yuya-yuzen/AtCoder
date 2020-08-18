N  個の宝石があり、i 番目の宝石の価値は Vi です。
あなたはこれらの宝石の中からいくつかを選んで手に入れます。
このとき、1 つも選ばなくとも、全て選んでも構いません。
ただし、i 番目の宝石を手に入れる場合コスト Ci を支払わなければいけません。
手に入れた宝石の価値の合計を X、支払ったコストの合計を Y とします。
X−Y の最大値を求めてください。

n = gets.to_i

v = gets.chomp.split
n.times do |i|
    v[i] = v[i].to_i
end

c = gets.chomp.split
n.times do |i|
    c[i] = c[i].to_i
end

values = [0]

(1..n-1).each do |i|
    
