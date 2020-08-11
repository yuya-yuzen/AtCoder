s = gets.to_s
t = gets.to_s

count = 0
s.length.times do |i|
    count += 1 if s[i] != t[i]
end

puts count
