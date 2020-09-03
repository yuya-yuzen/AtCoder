a = gets.chomp.to_i
if a.even?
    puts (a / 2) ** 2
else
    puts (a / 2) * ((a / 2) + 1)
end
