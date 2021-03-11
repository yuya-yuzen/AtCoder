a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i
if  (a < b && a + v * t >= b + w * t) ||\
    (a > b && a - v * t <= b - w * t)
    puts 'YES'
else
    puts 'NO'
end
