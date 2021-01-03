a, b = gets.chomp.split

def s(n)
    s = 0
    3.times { |i| s += n[i].to_i }
    return s
end

puts [s(a), s(b)].max
