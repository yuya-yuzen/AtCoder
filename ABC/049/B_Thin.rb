# 縦 H ピクセル、横 W ピクセルの画像があります。全てのピクセルは . または * で表されるものとします。
# 上から i 番目、左から j 番目のピクセルを表す文字を Ci,j で表します。
# この画像を 2 倍縦長にした画像を出力してください。
# すなわち、縦 2H ピクセル、横 W ピクセルの画像であって、上から i 番目、左から j 番目のピクセルは、
# C(i+1)/2,j (ただし、割り算は切り捨て)と等しい画像を出力してください。

hw = gets.chomp.split
h = hw[0].to_i

image = Array.new
h.times do
    input = gets
    image << input
end

h.times do |i|
    2.times do
        puts image[i]
    end
end