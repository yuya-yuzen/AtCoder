sx, sy, gx, gy = gets.chomp.split.map(&:to_i)
puts ((sy * gx + sx * gy) * 1.0) / (sy + gy)
