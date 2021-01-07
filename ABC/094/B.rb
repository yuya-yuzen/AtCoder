n, m, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

l = 0
r = 0

(1..(x - 1)).each do |i|
    l += 1 if a.include?(i)
end

((x + 1)..n).each do |i|
    r += 1 if a.include?(i)
end

puts [l, r].min
