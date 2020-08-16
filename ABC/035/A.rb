wh = gets.chomp.split
w = wh[0].to_i
h = wh[1].to_i
puts w / 4 == h / 3 ? "4:3" : "16:9"
