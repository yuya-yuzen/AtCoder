# 0 と 1 のみからなる3桁の番号 s が与えられます。
# 1 が何個含まれるかを求めてください。

# 3桁の番号を取得
s = gets.chomp

# 1が何個含まれているか数える変数を定義
count = 0

# 1が何個含まれているか検証
3.times do |i|
  if s[i].to_i == 1
    count += 1
  end
end

# 結果を出力
puts count