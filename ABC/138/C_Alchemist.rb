n = gets.to_i
v = gets.chomp.split
n.times do |i|
    v[i] = v[i].to_i
end
v.sort!.reverse!

(n-1).times do |i|
    mix = (v[n-1-i] + v[n-2-i]) / 2.0
    v.slice!(n-1-i,1)
    v[n-2-i] = mix
end

puts v[0]