md = gets.chomp.split
m = md[0].to_i
d = md[1].to_i
puts m % d == 0 ? "YES" : "NO"
