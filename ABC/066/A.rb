# snuke 君は自転車を買いに来ました。
# snuke 君はすでに買う自転車を決めたのですが、
# その自転車にはベルが付いていないため、
# 自転車とは別にベルも買う必要があります。
# snuke 君は安全意識が高いので、
# ベルをどちらの手でも鳴らせるよう、
# 両方のハンドルに 1 つずつ 付けることにしました。
# お店にあるベルは 3 種類で、それぞれ a円、 b円、 c円です。
# この 3 つのうち、異なる 2 つのベルを選んで買うときの、
# 値段の合計の最小値を求めて下さい。

input_line = gets.chomp.split
a = input_line[0].to_i
b = input_line[1].to_i
c = input_line[2].to_i

sum_a_b = a + b
sum_a_c = a + c
sum_b_c = b + c

min = sum_a_b

if min > sum_a_c
  min = sum_a_c
end

if min > sum_b_c
  min = sum_b_c
end

puts min
