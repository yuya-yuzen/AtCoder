s = gets.chomp
result = true

if s[0] != "A"
    result = false
end

if result
    count = 0
    (2..(s.length-2)).each do |i|
        count += 1 if s[i] == "C"
    end
    if count != 1
        result = false
    end
end

if result
    small_alphabets = []
    ("a".."z").each do |alphabet|
        small_alphabets << alphabet
    end
    s.length.times do |i|
        if s[i] == "A" || s[i] == "C"
            next
        end
        if !(small_alphabets.include?(s[i]))
            result = false
            break
        end
    end
end

puts result ? "AC" : "WA"