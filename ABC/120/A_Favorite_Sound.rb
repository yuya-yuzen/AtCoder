# 高橋くんは、自動販売機でジュースを買ったときの音が好きです。
# その音は 1 回 A 円で聞くことができます。
# 高橋くんは B 円持っていますが、お気に入りの音を C 回聞くと満足するため、
# B 円で最大 C 回まで聞けるだけ聞きます。
# 高橋くんはお気に入りの音を何回聞くことになるでしょうか。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

if b / a > c
  puts c
else
  puts b / a
end
