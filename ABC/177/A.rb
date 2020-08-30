dts = gets.chomp.split
d = dts[0].to_i
t = dts[1].to_i
s = dts[2].to_i
if d * 1.0 / s <= t
    puts "Yes"
else
    puts "No"
end
