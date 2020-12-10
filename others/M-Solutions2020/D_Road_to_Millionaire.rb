n = gets.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

money = 1000
stock = 0
(n - 1).times do |i|
    if a[i] < a[i + 1]
        tmp = money
        money %= a[i]
        stock += tmp / a[i]
    else
        money += stock * a[i]
        stock = 0
    end
end

if stock > 0
    money += stock * a.last
    stock = 0
end

puts money
