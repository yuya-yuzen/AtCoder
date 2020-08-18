# 文字列Sの書かれたボールがA個、文字列 Tの書かれたボールが B個あります。
# 高橋君は、文字列 Uの書かれたボールを 1個選んで捨てました。
# 文字列 S,Tの書かれたボールがそれぞれ何個残っているか求めてください。

st = gets.chomp.split
s = st[0]
t = st[1]

ab = gets.chomp.split
a = ab[0].to_i
b = ab[1].to_i

u = gets.chomp

case u
when s
  a -= 1
when t
  b -= 1
end

puts a.to_s + " " + b.to_s
