xt = gets.chomp.split
x = xt[0].to_i
t = xt[1].to_i
sand = x - t
puts sand > 0 ? sand : 0