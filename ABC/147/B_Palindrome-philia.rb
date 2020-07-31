# 高八士君は回文が大好きで、回文でない文字列が許せません。
# 高八士君は文字列を 1 回ハグするごとに、文字列から 1 文字を選んで任意の文字に変えることができます。
# 文字列 S が与えられます。S を回文にするために必要なハグの最小回数を答えてください。

s = gets.chomp

check_count = s.length / 2
hug = 0

check_count.times do |i|
    reverse_index = s.length - 1 - i
    if s[i] != s[reverse_index]
        hug += 1
    end
end

puts hug