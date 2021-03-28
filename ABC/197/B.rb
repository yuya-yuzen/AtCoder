h, w, x, y = gets.split.map(&:to_i)
x -= 1
y -= 1
s = []
h.times { s << gets.chomp }
count = 1

h.times do |i|
    pos = x - i - 1
    break if pos < 0 || s[pos][y] == '#'
    count += 1
end

h.times do |i|
    pos = x + i + 1
    break if pos >= h || s[pos][y] == '#'
    count += 1
end

w.times do |i|
    pos = y - i - 1
    break if pos < 0 || s[x][pos] == '#'
    count += 1
end

w.times do |i|
    pos = y + i + 1
    break if pos >= w || s[x][pos] == '#'
    count += 1
end

puts count
