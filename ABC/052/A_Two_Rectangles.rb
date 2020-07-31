# 二つの長方形があります。
# 一つ目の長方形は、縦の辺の長さがa、横の辺の長さがbです。
# 二つ目の長方形は、縦の辺の長さがc、横の辺の長さがdです。
# この二つの長方形のうち、面積の大きい方の面積を出力してください。
# なお、二つの長方形の面積が等しい時は、その面積を出力してください。

# 情報を取得
input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
d = input[3].to_i

# 二つの長方形の面積を計算
rectangle1 = a * b
rectangle2 = c * d

# 面積の大きい方のそれを出力
if rectangle1 > rectangle2
  puts rectangle1
else
  puts rectangle2
end