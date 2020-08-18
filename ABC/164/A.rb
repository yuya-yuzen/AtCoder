sw = gets.chomp.split
s = sw[0].to_i
w = sw[1].to_i
puts s <= w ? "unsafe" : "safe"