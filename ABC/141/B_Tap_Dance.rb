s = gets.chomp
result = true
s.length.times do |i|
    case s[i]
    when "U", "D"
        next
    when "R"
        if !((i + 1).odd?)
            result = false
            break
        end
    when "L"
        if !((i + 1).even?)
            result = false
            break
        end
    end
end
puts result ? "Yes" : "No"