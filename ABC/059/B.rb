# 2 つの正整数 A,B が与えられるので、
# その大小を比較してください。

# 2つの正整数を取得
a = gets.chomp.to_i
b = gets.chomp.to_i

# 比較した結果を格納する変数を宣言
result = String.new

# 大小比較する
if a > b
  result = "GREATER"
elsif a == b
  result = "EQUAL"
else
  result = "LESS"
end

# 結果を出力
puts result