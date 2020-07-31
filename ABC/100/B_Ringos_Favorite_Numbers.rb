dn = gets.chomp.split
d = dn[0].to_i
n = dn[1].to_i

result = 0
if d == 0
    if n == 100
        result = 101
    else
        result = n
    end
else
    if n == 100
        result = 100 ** d * (n + 1)
    else
        result = 100 ** d * n
    end
end

puts result