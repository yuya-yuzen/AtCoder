n = gets.chomp.to_i
if n == 1
    puts 0
else
    puts (10 ** n - ((9 ** n) * 2 - 8 ** n)) % (10 ** 9 + 7)
end
