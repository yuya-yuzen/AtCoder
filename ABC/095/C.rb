a, b, c, x, y = gets.split.map(&:to_i)
c *= 2
prices = []
(0..[x, y].max).each do |i|
    a_pizza = x - i; b_pizza = y - i; half2 = i
    a_pizza = 0 if a_pizza < 0
    b_pizza = 0 if b_pizza < 0
    price = a * a_pizza + b * b_pizza + c * half2
    prices << price
end
puts prices.min
