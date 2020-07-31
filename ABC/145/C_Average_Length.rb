n = gets.to_i
xy_a = []
n.times do
  xy = gets.chomp.split
  xy.length.times do |i|
    xy[i] = xy[i].to_i
  end
  xy_a << xy
end

xy_p = xy_a.permutation.to_a
sum = 0
xy_p.each do |xys|
  length = 0
  (n-1).times do |i|
    length += Math.sqrt((xys[i][0] - xys[i+1][0]) ** 2 + (xys[i][1] - xys[i+1][1]) ** 2)
  end
  sum += length
end

puts sum / xy_p.length