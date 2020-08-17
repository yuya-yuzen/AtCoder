n = gets.to_i
a = []
n.times do
    input = gets.to_i
    a << input
end

button = 1
count = 0
result = false
a.length.times do
    count += 1
    button = a[button - 1]
    if button == 2
        result = true
        break
    end
end

puts result ? count : -1