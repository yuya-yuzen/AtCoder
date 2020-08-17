n = gets.to_i
k = gets.to_i

num = 1
n.times do
    a = num * 2
    b = num + k
    if a < b
        num = a
    else
        num = b
    end
end

puts num