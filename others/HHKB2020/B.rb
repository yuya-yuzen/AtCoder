hw = gets.chomp.split
h = hw[0].to_i
w = hw[1].to_i

s = []
h.times do
    s << gets.chomp
end

count = 0
h.times do |i|
    w.times do |j|
        count += 1 if j + 1 < w && s[i][j] == "." && s[i][j+1] == "."
        count += 1 if i + 1 < h && s[i][j] == "." && s[i+1][j] == "."
    end
end

puts count
