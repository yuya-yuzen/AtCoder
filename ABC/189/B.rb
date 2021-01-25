n, x = gets.split.map(&:to_i)
x *= 100
al = 0
n.times do |i|
    v, p = gets.split.map(&:to_i)
    al += v * p
    if al > x
        puts i + 1
        exit
    end
end
puts '-1'
