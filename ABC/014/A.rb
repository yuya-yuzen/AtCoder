a = gets.chomp.to_i
b = gets.chomp.to_i
if a % b != 0
    puts b - a % b
else
    puts 0
end
