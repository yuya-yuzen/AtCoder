n = gets.to_i
if n % 1000 != 0
    puts 1000 - n % 1000
else
    puts 0
end
