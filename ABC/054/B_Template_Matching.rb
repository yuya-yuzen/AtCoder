nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

a = []
n.times do
    a << gets.chomp
end

b = []
m.times do
    b << gets.chomp
end

result = false
n.times do |i|
    result = false
    if a[i].include?(b[0])
        result = true
        first = 0
        n.times do |j|
            if a[i].slice(j, m) == b[0]
                first = j
            end
        end

        (m - 1).times do |j|
            if !a[i + j + 1] || a[i + j + 1].slice(j, m) != b[j + 1]
                result = false
                break
            end
        end
    end
    break if result
end

puts result ? "Yes" : "No"
