# 正整数 A,B が与えられます。
# A も B も割り切る正整数のうち、K 番目に大きいものを求めてください。
# なお、与えられる入力では、
# A も B も割り切る正整数のうち K 番目に大きいものが存在することが保証されます。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
k = input[2].to_i

max = a > b ? a : b

numbers = []
(1..max).each do |num|
    if a % num == 0 && b % num == 0
        numbers << num
    end
end

puts numbers[(numbers.length - 1) - (k - 1)]