x = gets.to_i
(1..x).each do |i|
    if 100 * i <= x && x <= 105 * i
        puts 1
        exit
    end
end
puts 0
