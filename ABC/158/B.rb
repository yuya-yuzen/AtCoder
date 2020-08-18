# 高橋君は青と赤の 2 色のボールを持っており、これらを一列に並べようとしています。
# 初め、列にボールはありません。根気のある高橋君は、次の操作を 10^100 回繰り返します。
# 列の末尾に、A 個の青いボールを加える。その後、列の末尾に B 個の赤いボールを加える。
# こうしてできる列の先頭から N 個のボールのうち、青いボールの個数はいくつでしょうか。

input = gets.chomp.split
n = input[0].to_i
a = input[1].to_i
b = input[2].to_i

one_set = a + b
blue_count = (n / one_set) * a

if n % one_set > a
    blue_count += a
else
    blue_count += n % one_set
end

puts blue_count