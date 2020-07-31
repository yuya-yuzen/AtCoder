s = gets.chomp

lengths = []
s.length.times do |i|
    length = 0
    (i..s.length).each do |j|
        ok = true
        case s[j]
        when "A", "C", "T", "G"
            length += 1
        else
            break
            ok = false
        end
        break if !ok
    end
    lengths << length
end

puts lengths.max