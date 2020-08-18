s = gets.chomp
n = s.length

result = true

(n / 2).times do |i|
    if s[i] != s[n - (i + 1)]
        result = false
        break
    end
end

if result
    ((n - 1) / 2).times do |i|
        if s[i] != s[((n - 1) / 2) - (i + 1)]
            result = false
            break
        end
    end
end

if result
    ((n - 1) / 2).times do |i|
        if s[(n + 3) / 2 + (i - 1)] != s[n - (i + 1)]
            result = false
            break
        end
    end
end

puts result ? "Yes" : "No"