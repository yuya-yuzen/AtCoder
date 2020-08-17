n = gets.to_i
k = gets.to_i
x = gets.chomp.split
n.times do |i|
    x[i] = x[i].to_i
end

distance = 0
x.each do |ball|
    a = ball * 2
    b = (k - ball).abs * 2
    if a < b
        distance += a
    else
        distance += b
    end
end

puts distance