n, k = gets.split.map(&:to_i)

def func(n)
    str_n = n.to_s.split(//).sort.join
    g1 = str_n.to_i
    g2 = str_n.reverse.to_i
    return g2 - g1
end

k.times do
    n = func(n)
end

puts n
