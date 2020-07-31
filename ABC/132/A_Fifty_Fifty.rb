s = gets.chomp
words = []
s.length.times do |i|
    words << s[i] if !(words.include?(s[i]))
end
result = true
if words.length != 2
    result = false
else
    words.each do |word|
        if s.count(word) != 2
            result = false
            break
        end
    end
end
puts result ? "Yes" : "No"