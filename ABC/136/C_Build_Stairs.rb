n = gets.to_i
h = gets.chomp.split
n.times do |i|
    h[i] = h[i].to_i
end

result = true
max = h[0]
(n-1).times do |i|
    if h[i+1] > max
        h[i+1] -= 1
        max = h[i+1]
    elsif h[i+1] < max
        result = false
        break
    end
end

puts result ? "Yes" : "No"