n = gets.to_i
tmp = 1000
next_tmp = 10000
count = 0
comma = 1
i = 0

while n >= tmp
    if n >= next_tmp
        num_count = next_tmp - tmp
        count += num_count * comma
    else
        num_count = n - tmp + 1
        count += num_count * comma
        break
    end

    tmp = next_tmp
    next_tmp *= 10

    i += 1
    if i == 3
        comma += 1
        i = 0
    end
end

puts count
