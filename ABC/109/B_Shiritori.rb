n = gets.to_i
w_1 = gets.chomp
w = [w_1]
last = w_1[-1]

rule = true
(n-1).times do
    input = gets.chomp
    if last == input[0] && !w.include?(input)
        last = input[-1]
        w << input
    else
        rule = false
        break
    end
end

puts rule ? "Yes" : "No"