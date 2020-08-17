# 縦 H ピクセル、横 W ピクセルの画像があります。
# 各ピクセルは英小文字で表されます。
# 上から i 番目、左から j 番目のピクセルは aij です。
# この画像の周囲 1 ピクセルを # で囲んだものを出力してください。

input_line = gets.chomp.split
h = input_line[0].to_i
w = input_line[1].to_i

pixels = Array.new
h.times do
  pixel = gets.chomp
  pixels << pixel
end

top_and_bottom_count = w + 2

# 一番上の行
top_and_bottom_count.times do
  print "#"
end

# 改行
print "\n"

h.times do |i|
  print "#"
  print pixels[i]
  print "#\n"
end

top_and_bottom_count.times do
  print "#"
end

print "\n"
