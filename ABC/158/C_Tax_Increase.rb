# 消費税率が 8 %のとき A 円、10 ％のとき B 円の消費税が課されるような商品の税抜き価格を求めてください。
# ただし、税抜き価格は正の整数でなければならないものとし、
# 消費税の計算において小数点以下は切り捨てて計算するものとします。
# 条件を満たす税抜き価格が複数存在する場合は最も小さい金額を出力してください。
# また、条件を満たす税抜き価格が存在しない場合は -1 と出力してください。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

the_price = -1

10000.times do |i|
    price = i + 1
    tax_8 = price * 8 / 100.0
    tax_10 = price * 10 / 100.0
    if tax_8.to_i == a && tax_10.to_i == b
        the_price = price
        break
    end
end

puts the_price