n = gets.to_i
i = 2
j = 2
h = Hash.new

while true
    break if i ** j > n

    while true
        num = i ** j

        if num <= n && !h.key?(num)
            h[num] = true
        else
            break
        end

        j += 1
    end

    i += 1
    j = 2
end

puts n - h.size
