# すぬけくんは N 本の棒を持っています。 
# i 番目の棒の長さは li です。
# すぬけくんは K 本の棒を選んでつなげて、ヘビのおもちゃを作りたいです。
# ヘビのおもちゃの長さは選んだ棒たちの長さの総和で表されます。
# ヘビのおもちゃの長さとしてありうる長さのうち、最大値を求めなさい。

# 持っている棒の本数、つなげる棒の本数を取得
line_1 = gets.chomp.split
n = line_1[0].to_i
k = line_1[1].to_i

# 全ての棒の情報を取得
line_2 = gets.chomp.split
rods = Array.new
n.times do |i|
  rods << line_2[i].to_i
end

# 棒を長さ順（昇順）に並び替える
rods.sort!

# つなげてできるヘビのおもちゃの長さを格納する変数を宣言
snake = 0

# 棒をつなげる
k.times do |i|
  snake += rods[n - i - 1]
end

# 結果を出力
puts snake