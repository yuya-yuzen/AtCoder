s = gets.chomp
t = gets.chomp

diffs = []

s.length.times do |i|
    break if i + t.length > s.length
    diff = 0
    t.length.times do |j|
        diff += 1 if s[i+j] != t[j]
    end
    diffs << diff
end

puts diffs.min
