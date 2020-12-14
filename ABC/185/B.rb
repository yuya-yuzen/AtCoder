n, m, t = gets.chomp.split.map(&:to_i)
now = n
previous = 0
zero = false
m.times do
    a, b = gets.chomp.split.map(&:to_i)
    now -= a - previous if a - previous >= 0
    if now <= 0
        zero = true
        break
    end
    if now + (b - a) <= n
        now += b - a
    else
        now = n
    end
    previous = b
end
if zero
    puts "No"
else
    now -= t - previous
    puts now > 0 ? "Yes" : "No"
end
