# N  個の都市があり、M 本の道路があります。
# i(1≦i≦M) 番目の道路は、都市 ai と 都市 bi (1≦ai,bi≦N) を双方向に結んでいます。
# 同じ 2 つの都市を結ぶ道路は、1 本とは限りません。
# 各都市から他の都市に向けて、何本の道路が伸びているか求めてください。

input_line_1 = gets.chomp.split
n = input_line_1[0].to_i
m = input_line_1[1].to_i

roads = Array.new

m.times do
  input_line = gets.chomp.split
  2.times do |i|
    input_line[i] = input_line[i].to_i
  end
  roads << input_line
end

n.times do |i|
  count = 0
  m.times do |j|
    if roads[j].include?(i+1)
      count += 1
    end
  end
  puts count
end
