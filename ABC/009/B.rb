n = gets.chomp.to_i
a = []
n.times do
    a << gets.chomp.to_i
end
a.sort!.reverse!
a.uniq! if a.count - a.uniq.count > 0
puts a[1]
