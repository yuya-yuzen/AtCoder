l = gets.chomp.to_i - 1

def fact(n)
    f = 1
    while n > 0
        f = f * n
        n = n - 1
    end
    f
end

rr = 11
puts fact(l) / (fact(rr) * fact(l - rr))
