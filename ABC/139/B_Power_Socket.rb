# 高橋くんの家には電源プラグの差込口が 1 口しかありません。
# そこで、高橋くんは A 個口の電源タップをいくつか使って未使用の差込口を B 口以上に拡張したいと考えています。
# A 個口の電源タップ 1 つと未使用の差込口 1 口を使って、新たに差込口を A 口増やすことができます。
# 最小でいくつの電源タップが必要でしょうか。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

power_socket = 1
power_strip = 0
while power_socket < b
    power_socket += a - 1
    power_strip += 1
end

puts power_strip