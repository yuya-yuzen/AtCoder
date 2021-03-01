n = gets.to_i
can_buy = false
money = 1000000001
n.times do
    a, p, x = gets.split.map(&:to_i)
    x -= a
    if x > 0 && money > p
        can_buy = true
        money = p
    end
end
puts can_buy ?  money : -1
