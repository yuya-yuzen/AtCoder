n = gets.to_i
a = []; b = []

n.times do
    aa, bb = gets.split.map(&:to_i)
    a << aa; b << bb
end

a_min = a.min; b_min = b.min

if a.find_index(a_min) == b.find_index(b_min)
    a.sort!; b.sort!

    time0 = a_min + b_min
    time1 = [a[0], b[1]].max
    time2 = [a[1], b[0]].max

    puts [time0, time1, time2].min
else
    puts [a_min, b_min].max
end
