# xy  平面があり、その上に N 人の学生がいて、M 個のチェックポイントがあります。
# i 番目の学生がいる座標は (ai,bi)(1≦i≦N) であり、
# 番号 j のチェックポイントの座標は (cj,dj)(1≦j≦M) です。
# これから合図があり、各学生はマンハッタン距離で一番近いチェックポイントに集合しなければなりません。
# 2つの地点 (x1,y1) と (x2,y2) 間のマンハッタン距離は |x1−x2|+|y1−y2| で表されます。
# ここで、|x| は x の絶対値を表します。
# ただし、一番近いチェックポイントが複数ある場合には、
# 番号が最も小さいチェックポイントに移動することとします。
# 合図の後に、各学生がどのチェックポイントに移動するかを求めてください。

nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

a = []
b = []
n.times do
    input = gets.chomp.split
    a << input[0].to_i
    b << input[1].to_i
end

c = []
d = []
m.times do
    input = gets.chomp.split
    c << input[0].to_i
    d << input[1].to_i
end

n.times do |i|
    distances = []
    m.times do |j|
        distances << (a[i] - c[j]).abs + (b[i] - d[j]).abs
    end
    puts distances.index(distances.min) + 1
end