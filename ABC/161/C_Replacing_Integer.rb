input = gets.chomp.split
n = input[0].to_i
k = input[1].to_i

n %= k
min = n
loop do
    n = (n - k).abs
    if n < min
        min = n
    else
        break
    end
end

puts min