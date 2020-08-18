input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

product = a * b

small = a < b ? a : b
bigest_common = 1
(2..small).each do |num|
    bigest_common = num if a % num == 0 && b % num == 0
end

puts product / bigest_common