n, m = gets.chomp.split.map(&:to_i)
left = 0
right = 100005
m.times do
    l, r = gets.chomp.split.map(&:to_i)
    left = l if l > left
    right = r if r < right
end
puts (left..right).size
