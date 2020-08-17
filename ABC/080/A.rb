# 駐車場があり、以下の二種類のプランのどちらかを選んで駐車できます。
# プラン 1 : T 時間駐車した場合、A×T 円が駐車料金となる。
# プラン 2 : 駐車した時間に関わらず B 円が駐車料金となる。
# N 時間駐車するとき、駐車料金は最小でいくらになるか求めてください。

input_line = gets.chomp.split
n = input_line[0].to_i
a = input_line[1].to_i
b = input_line[2].to_i

plan_1 = n * a
plan_2 = b

if plan_1 < plan_2
  puts plan_1
else
  puts plan_2
end
