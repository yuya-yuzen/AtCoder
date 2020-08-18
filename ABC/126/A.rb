# A, B, C からなる長さ N の文字列 S と、1 以上 N 以下の整数 K が与えられます。
# 文字列 S の K 文字目を小文字に書き換え、新しくできた S を出力してください。

nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

s = gets.chomp
s[k-1] = s[k-1].downcase

puts s