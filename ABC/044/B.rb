# w を、英小文字のみからなる文字列とします。 
# w が以下の条件を満たすならば、
# w を美しい文字列と呼ぶことにします。
#   どの英小文字も、w 中に偶数回出現する。
# 文字列 w が与えられます。
# w が美しい文字列かどうか判定してください。

# 文字列を取得
w = gets.chomp

# 出現する文字を格納する配列を宣言
words = Array.new

# 出現する文字を配列に格納
w.length.times do |i|
  if words.include?(w[i])
    next
  else
    words << w[i]
  end
end

# 美しい文字列かどうかの結果を格納する変数を宣言
# 仮に、文字列は美しいとしておく
beautiful = true

# 美しい文字列か判定
words.length.times do |i|
  
  # その文字が何回、文字列中に出現するか格納する変数を宣言
  count = 0
  
  # その文字が何回、文字列中に出現するか数える
  w.length.times do |j|
    if words[i] == w[j]
      count += 1
    end
  end
  
  # その文字が奇数回、出現していた場合の処理
  # (文字列が美しくなかった場合)
  if count.odd?
    beautiful = false
    puts "No"
    break
  end
end

# 美しい文字列であれば、Yesと出力
if beautiful
  puts "Yes"
end