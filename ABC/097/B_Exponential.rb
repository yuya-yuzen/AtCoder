x = gets.to_i
max = 0
(1..x).each do |i|
    sqrt = Math.sqrt(i)
    max = i if sqrt % 1 == 0
end
puts max