ad = gets.chomp.split
a = ad[0].to_i
d = ad[1].to_i
if (a + 1) * d >= a * (d + 1)
    puts (a + 1) * d
else
    puts a * (d + 1)
end
