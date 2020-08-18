input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
d = input[3].to_i

result = true
loop do
    c -= b
    break if c <= 0
    a -= d
    if a <= 0
        result = false
        break
    end
end

puts result ? "Yes" : "No"