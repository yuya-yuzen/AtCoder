# 二つの整数 A, B が入力されます。
# A+B の値を出力してください。
# ただし、A+B が 10 以上の場合は、代わりに error と出力してください。

input_line = gets.chomp.split
a = input_line[0].to_i
b = input_line[1].to_i

if a + b >= 10
  puts "error"
else
  puts a + b
end
