nst = gets.chomp.split
n = nst[0].to_i
s = nst[1].to_i
t = nst[2].to_i

w = gets.to_i

best_body_days = 0
best_body_days += 1 if s <= w && w <= t

(n-1).times do
    w += gets.to_i
    best_body_days += 1 if s <= w && w <= t
end

puts best_body_days
