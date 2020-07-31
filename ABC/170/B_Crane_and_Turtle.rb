xy = gets.chomp.split
x = xy[0].to_i
y = xy[1].to_i

result = false
if y.even? && y <= x * 4
    (0..x).each do |i|
        j = x - i
        if i * 2 + j * 4 == y
            result = true
            break
        end
    end
end

puts result ? "Yes" : "No"
