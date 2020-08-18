x = gets.chomp.split
x.length.times do |i|
    if x[i] == "0"
        puts i + 1
        break
    end
end
