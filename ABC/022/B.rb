n = gets.chomp.to_i
a = []
n.times do
    a << gets.chomp
end
puts n - a.uniq.length
