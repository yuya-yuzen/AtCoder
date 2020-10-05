s = gets.chomp
t = gets.chomp
result = true
at_symbol = ["a", "t", "c", "o", "d", "e", "r"]

s.length.times do |i|
    next if s[i] == "@" && at_symbol.include?(t[i])
    next if t[i] == "@" && at_symbol.include?(s[i])

    if s[i] != t[i]
        result = false
        break
    end
end

puts result ? "You can win" : "You will lose"
