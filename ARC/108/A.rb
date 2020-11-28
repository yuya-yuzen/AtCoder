S, P = gets.chomp.split.map(&:to_i)
result = false
(1..Math.sqrt(P)).each do |i|
    if i*(S-i) == P
        result = true
        break
    end
end
puts result ? "Yes" : "No"
