# すぬけくんはレストランに通うのが好きです。
# すぬけくん行きつけのレストランは何を食べても 1 食 800 円で、
# 15 食食べる毎にその場で 200 円もらえます。
# すぬけくんは今までで合計 N 食食べました。
# 今までに払った金額を x 円、レストランからもらった金額を y 円として、
# x−y を求めなさい。

# 今まで食べた回数を取得
n = gets.chomp.to_i

# 今までに払った金額を計算
x = n * 800

# 今までにレストランからもらった金額を計算
y = (n / 15) * 200

# 収支を出力
puts x - y