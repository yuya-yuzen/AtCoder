# すぬけくんはトレーニングが好きなので
# N 回だけトレーニングすることにしました。
# すぬけくんのトレーニング開始前のパワーは 1 です。
# すぬけくんが i 回目のトレーニングを終えるとパワーが i 倍されます。
# すぬけくんが N 回トレーニングをしたあとのパワーを求めなさい。
# ただし、答えの値は非常に大きな値になることがあるので 
# 10^9+7 で割ったあまりを出力してください。

# トレーニングの回数を取得
n = gets.chomp.to_i

# すぬけくんのパワーの初期値は1
power = 1

# トレーニングを実施
n.times do |i|
  power *= (i + 1)
  power %= (10 ** 9 + 7)
end

# 結果を出力
puts power