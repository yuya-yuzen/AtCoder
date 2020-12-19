n = gets.to_i
a = Array.new(10005, 0)

(1..100).each do |x|
    (1..100).each do |y|
        (1..100).each do |z|
            v = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
            if v < 10005
                a[v] += 1
            end
        end
    end
end

(1..n).each do |i|
    puts a[i]
end
