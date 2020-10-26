x = gets.chomp
result = false
while x.length >= 0
    if x == ''
        result = true
        break
    end

    if ['o', 'k', 'u'].include?(x[-1])
        x.chop!
        next
    end

    if x.length >= 2 && x[-2] == 'c' && x[-1] == 'h'
        x.chop!.chop!
        next
    end

    break
end
puts result ? "YES" : "NO"
