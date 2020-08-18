n = gets.to_i
s = []
n.times do
    input = gets.chomp
    s << input
end
puts s.uniq.count