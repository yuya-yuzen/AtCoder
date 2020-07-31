# joisinoお姉ちゃんは、劇場の受付を担当しています。
# この劇場には、席 1 から席 100000 までの、100000 個の席があります。
# 彼女のメモ書きによると、今までの間に N 組の団体が来て、
# i 組目の団体は席 li から席 ri までの連続した席に座っています。
# 今、劇場の席には何人座っているか求めてください。

n = gets.to_i

l = Array.new
r = Array.new

n.times do
  input_line = gets.chomp.split
  l << input_line[0].to_i
  r << input_line[1].to_i
end

sum = 0

n.times do |i|
  sum += r[i] - l[i] + 1
end

puts sum
