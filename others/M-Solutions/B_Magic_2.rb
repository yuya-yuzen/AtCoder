abc = gets.chomp.split
a = abc[0].to_i
b = abc[1].to_i
c = abc[2].to_i
k = gets.to_i

power_count = 0
k.times do
    if c > b && b > a
        break
    elsif c > b
        b *= 2
    else
        c *= 2
    end
    power_count += 1
    if power_count == k && c > b && b > a
        power_count -= 1
        break
    elsif c > b && b > a
        break
    end
end

puts power_count < k ? "Yes" : "No"
