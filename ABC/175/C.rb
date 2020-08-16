xkd = gets.chomp.split
x = xkd[0].to_i
k = xkd[1].to_i
d = xkd[2].to_i

if x.abs >= k * d
    if x > 0
        puts x - (k * d)
    else
        puts (x + (k * d)).abs
    end
    
else
    k -= (x / d)
    x -= (x / d) * d
    x -= d if k.odd?
    puts x.abs
end
