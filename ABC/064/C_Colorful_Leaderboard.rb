# AtCoderでは、コンテストに参加すると「色」が付き、これはレートによって次のように変化します：
# レート 1-399：灰色
# レート 400-799：茶色
# レート 800-1199：緑色
# レート 1200-1599：水色
# レート 1600-1999：青色
# レート 2000-2399：黄色
# レート 2400-2799：橙色
# レート 2800-3199：赤色
# また、レートが 3200 以上になると色を自由に変えることができます。
# 現在 N 人の人がAtCoderのコンテストに参加したことがあり、i 人目の人のレートは ai です。
# そのとき、色の種類数の最小値と最大値を求めなさい。

n = gets.to_i
input_a = gets.chomp.split

a = Array.new
n.times do |i|
    a << input_a[i].to_i
end

def color(rate)
    case rate
    when 1..399
        return "灰色"
    when 400..799
        return "茶色"
    when 800..1199
        return "緑色"
    when 1200..1599
        return "水色"
    when 1600..1999
        return "青色"
    when 2000..2399
        return "黄色"
    when 2400..2799
        return "橙色"
    when 2800..3199
        return "赤色"
    else
        return "自由"
    end
end

a_colors = Array.new
freedom_color_count = 0

a.each do |rate|
    if !a_colors.include?(color(rate))
        a_colors << color(rate)
    end

    if color(rate) == "自由"
        freedom_color_count += 1
    end
end

if freedom_color_count != 0
    max = a_colors.length - 1
    min = a_colors.length - 1
    if min == 0
        min += 1
    end

    while freedom_color_count > 0
        max += 1
        freedom_color_count -= 1
    end
else
    max = a_colors.length
    min = a_colors.length
end

print min.to_s + " " + max.to_s + "\n"