n = gets.to_i
sum = 0
n.times do
    input = gets.chomp.split
    x = input[0].to_f
    u = input[1]

    case u
    when "JPY"
        sum += x
    when "BTC"
        sum += x * 380000
    end
end

puts sum