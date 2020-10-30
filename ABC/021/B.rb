n = gets.chomp.to_i
ab = gets.chomp.split
a = ab[0].to_i
b = ab[1].to_i
k = gets.chomp.to_i
p_a = gets.chomp.split

passed_towns = [a, b]
k.times do |i|
    passed_towns << p_a[i].to_i
end

puts passed_towns.length == passed_towns.uniq.length ? "YES" : "NO"
