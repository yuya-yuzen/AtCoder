# 10000 円札と、5000 円札と、1000 円札が合計で n 枚あって、
# 合計金額が y 円であったという。
# このような条件を満たす各金額の札の枚数の組を 1 つ求めなさい。
# そのような状況が存在し得ない場合には -1 -1 -1 と出力しなさい。

input = gets.chomp.split

# 札の枚数を取得
n = input[0].to_i

# 合計金額を取得
y = input[1].to_i

# 組み合わせを返す関数を定義
def judge(n, y)
  (n+1).times do |i|
    (n+1).times do |j|
      k = n - (i + j)
      break if k < 0
      sum = 10000 * i + 5000 * j + 1000 * k
      return "#{i} #{j} #{k}" if sum == y
    end
  end
  
  # 組み合わせが無かった場合
  return "-1 -1 -1"
end

# 結果を出力
puts judge(n, y)