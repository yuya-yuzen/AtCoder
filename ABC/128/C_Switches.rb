nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

k = []
s_a = []
m.times do |i|
    input = gets.chomp.split
    k << input[0].to_i
    s = []
    k[i].times do |j|
        s << input[j+1].to_i
    end
    s_a << s
end

p_a = gets.chomp.split
m.times do |i|
    p_a[i] = p_a[i].to_i
end

