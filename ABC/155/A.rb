# 3つ組の数について、ある2つが等しく、残りの1つがそれらと異なるとき、
# その3つ組を「かわいそう」であるといいます。
# 3つの整数A, B, Cが与えるので、この3つ組がかわいそうであれば"Yes"を、
# そうでなければ"No"を出力してください。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

if (a == b && a != c) || (a == c && a != b) || (b == c && a != b)
  puts "Yes"
else
  puts "No"
end
