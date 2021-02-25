n = gets.to_i
a_max = 0
b_min = 1000000001
n.times do
    a, b = gets.split.map(&:to_i)
    if a > a_max
        a_max = a
        b_min = b
    end
end
puts a_max + b_min
