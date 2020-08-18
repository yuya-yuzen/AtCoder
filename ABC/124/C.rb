s = gets.chomp
prev = s[0]
count = 0
(s.length - 1).times do |i|
    if prev == s[i + 1]
        count += 1
        case s[i + 1]
        when "0"
            prev = "1"
        when "1"
            prev = "0"
        end
    else
        prev = s[i + 1]
    end
end
puts count