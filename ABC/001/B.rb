m = gets.chomp.to_i
if m < 100
    puts "00"
elsif m <= 5000
    if m < 1000
        puts "0" + (m / 100).to_s
    else
        puts m / 100
    end
elsif m <= 30000
    puts (m / 1000) + 50
elsif m <= 70000
    puts (((m / 1000) - 30) / 5) + 80
else
    puts 89
end
