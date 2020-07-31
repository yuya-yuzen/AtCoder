n = gets.to_i
ta = gets.chomp.split
t = ta[0].to_i
a = ta[1].to_i
h = gets.chomp.split
n.times do |i|
    h[i] = h[i].to_i
end

temperature_diff_a = []
n.times do |i|
    temperature = t - h[i] * 0.006
    temperature_diff_a << (temperature - a).abs
end

puts temperature_diff_a.index(temperature_diff_a.min) + 1