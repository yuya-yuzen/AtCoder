n = gets.to_i

def sum a, n
    return (n * (2 * a + (n - 1) * a)) / 2
end

sum_n = sum(1, n)
sum_3 = sum(3, (n / 3))
sum_5 = sum(5, (n / 5))
sum_15 = sum(15, (n / 15))

puts sum_n - (sum_3 + sum_5 - sum_15)