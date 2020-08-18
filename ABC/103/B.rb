s = gets.chomp
t = gets.chomp

result = false
s.length.times do |i|
    s.length.times do |j|
        index = i+j
        index -= s.length if index >= s.length
        if s[j] != t[index]
            break
        elsif j == s.length - 1
            result = true
        end
    end
    break if result
end

puts result ? "Yes" : "No"