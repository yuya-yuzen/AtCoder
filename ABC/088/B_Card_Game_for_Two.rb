# n 枚のカードがあり、i 枚目のカードには ai という数が書かれています。
# Alice と Bob はこれらのカードを使ってゲームを行います。
# ゲームでは 2 人が交互に 1 枚ずつカードを取っていきます。
# Alice が先にカードを取ります。
# 2 人がすべてのカードを取ったときゲームは終了し、取ったカードの数の合計がその人の得点になります。
# 2 人とも自分の得点を最大化するように最適戦略をとったとき、Alice は Bob より何点多くの得点を獲得できるかを求めてください。

# カードの枚数を取得
n = gets.chomp.to_i

# それぞれのカードの情報を取得
cards = gets.chomp.split
n.times do |i|
    cards[i] = cards[i].to_i
end

# Alice と Bob のそれぞれが取ったカードに書かれた数を足した和を格納する変数を定義
a = 0
b = 0

# ゲームの処理を記述
cards.length.times do |i|
  
  # 取られていないカードのうち、最大の数とそのカードの位置を格納する変数を定義
  max = 0
  max_index = 0
  
  # 取られていないカードのうち、最大の数とそのカードの位置を格納
  cards.each do |card|
    if card > max
      max = card
      max_index = cards.index(card)
    end
  end
  
  # ループの回数が偶数か奇数かで、Alice と Bob のどちらの順番かを判定
  if i.even?
    a += max
  else
    b += max
  end
  
  # 取ったカードを削除
  cards.delete_at(max_index)
end

# 結果を出力
puts a - b