a, b = gets.split.map(&:to_i)
a += b

if a >= 15 && b >= 8
    puts 1
elsif a >= 10 && b >= 3
    puts 2
elsif a >= 3
    puts 3
else
    puts 4
end
