# 3  つの整数 A,B,C が与えられます。
# 整数 C が A 以上 かつ B 以下であるかを判定してください。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

if a <= c && c <= b
    puts "Yes"
else
    puts "No"
end