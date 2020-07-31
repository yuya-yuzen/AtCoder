n = gets.to_i
s = []
n.times do
    input = gets.chomp
    s << input
end

m = gets.to_i
t = []
m.times do
    input = gets.chomp
    t << input
end

moneys = []
s.each do |str|
    money = s.count(str) - t.count(str)
    moneys << money
end

puts moneys.max > 0 ? moneys.max : 0