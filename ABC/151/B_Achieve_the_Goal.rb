nkm = gets.chomp.split
n = nkm[0].to_i
k = nkm[1].to_i
m = nkm[2].to_i

a = gets.chomp.split
(n - 1).times do |i|
    a[i] = a[i].to_i
end

sum_n_1 = 0
(n - 1).times do |i|
    sum_n_1 += a[i]
end

condition = m * n
if sum_n_1 >= condition
    puts 0
elsif sum_n_1 + k < condition
    puts -1
else
    puts condition - sum_n_1
end