# 2 つの正整数 a , b が与えられます。
# a と b の積が偶数か奇数か判定してください。

# 2つの正整数を取得
input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

# 2つの正整数の積を計算
product = a * b

# 偶数か奇数かの結果を格納する変数を宣言
result = String.new

# 偶数か奇数か判定
if product.even?
  result = "Even"
else
  result = "Odd"
end

# 結果を出力
puts result