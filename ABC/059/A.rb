# 英小文字からなる 3 つの単語 s1, s2, s3 が空白区切りで与えられるので、
# 単語の先頭の文字をつなげ、大文字にした略語を出力してください。

s = gets.chomp.split
3.times do |i|
    print s[i][0].upcase
end
print "\n"