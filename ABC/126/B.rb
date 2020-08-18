# 長さ 4 の数字列 S が与えられます。
# あなたは、この数字列が以下のフォーマットのどちらであるか気になっています。
# YYMM フォーマット:
# 西暦年の下 2 桁と、月を 2 桁で表したもの (例えば 1 月なら 01) をこの順に並べたもの
# MMYY フォーマット:
# 月を 2 桁で表したもの (例えば 1 月なら 01) と、西暦年の下 2 桁をこの順に並べたもの
# 与えられた数字列のフォーマットとして考えられるものが
# YYMM フォーマットのみである場合 YYMM を、
# MMYY フォーマットのみである場合 MMYY を、
# YYMM フォーマット と MMYY フォーマットのどちらの可能性もある場合 AMBIGUOUS を、
# どちらの可能性もない場合 NA を出力してください。

s = gets.chomp

yymm = false
mmyy = false

front = s[0].to_i * 10 + s[1].to_i
back = s[2].to_i * 10 + s[3].to_i

yymm = true if 0 < back && back < 13
mmyy = true if 0 < front && front < 13

if yymm && mmyy
    puts "AMBIGUOUS"
elsif yymm
    puts "YYMM"
elsif mmyy
    puts "MMYY"
else
    puts "NA"
end