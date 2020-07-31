# 数直線上に N 人の人が住んでいます。i 番目の人が住んでいるのは座標 Xi です。
# あなたは N 人全員が参加する集会を開くことを考えています。
# 集会は数直線上の任意の 整数値の座標 で開くことができ、座標 P で集会を開くとき、
# i 番目の人は集会に参加するために (Xi−P)2 の体力を消費します。
# N 人が消費する体力の総和としてありえる値の最小値を求めてください。

n = gets.to_i
x = gets.chomp.split
n.times do |i|
    x[i] = x[i].to_i
end

staminas = Array.new
(1..(x.max)).each do |coordinate|
    stamina = 0
    n.times do |i|
        stamina += (x[i] - coordinate) ** 2
    end
    staminas << stamina
end

puts staminas.min