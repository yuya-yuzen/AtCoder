# 3×3  のサイズのビンゴカードがあります。
# 上から i 行目、左から j 列目の数は Ai,j です。
# 続けて、 N 個の数 b1,b2,⋯,bN が選ばれます。
# 選ばれた数がビンゴカードの中にあった場合、ビンゴカードのその数に印を付けます。
# N 個の数字が選ばれた時点でビンゴが達成されているか、則ち、
# 縦・横・斜めのいずれか 1 列に並んだ 3 つの数の組であって、
# 全てに印の付いているものが存在するかどうかを判定してください。

a = Array.new
3.times do
    a_row = gets.chomp.split
    a_row.length.times do |i|
        a_row[i] = a_row[i].to_i
    end
    a << a_row
end

n = gets.to_i
b = Array.new
n.times do
    input_b = gets.to_i
    b << input_b
end

3.times do |i|
    3.times do |j|
        9.times do |k|
            if a[i][j] == b[k]
                a[i][j] = 0
            end
        end
    end
end

result = false

3.times do |i|
    3.times do|j|
        if a[i][j] != 0
            break
        end
        if j == 2
            result = true
        end
    end
    if result
        break
    end
end

unless result
    3.times do |i|
        3.times do|j|
            if a[j][i] != 0
                break
            end
            if j == 2
                result = true
            end
        end
        if result
            break
        end
    end
end

if !result && ((a[0][0] == 0 && a[1][1] == 0 && a[2][2] == 0) || (a[0][2] == 0 && a[1][1] == 0 && a[2][0] == 0))
    result = true
end

if result
    puts "Yes"
else
    puts "No"
end