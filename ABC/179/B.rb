n = gets.chomp.to_i
d = []
n.times do
    ele = gets.chomp.split
    ele[0] = ele[0].to_i
    ele[1] = ele[1].to_i
    d << ele
end

count = 0
result = false
n.times do |i|
    if d[i][0] == d[i][1]
        count += 1
    else
        count = 0
    end
    if count >= 3
        result = true
        break
    end
end

puts result ? "Yes" : "No"
