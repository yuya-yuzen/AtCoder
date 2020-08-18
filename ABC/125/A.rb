# ビスケット生産装置を起動すると、起動してから
# A 秒後、2A 秒後、3A 秒後、... (A の倍数秒後) に B 枚ずつビスケットを生産します。
# ビスケット生産装置を起動してから T+0.5 秒後までに
# 生産されるビスケットの合計枚数を求めてください。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
t = input[2].to_i

biscuit = 0
time = a
while time <= t + 0
  biscuit += b
  time += a
end

puts biscuit
