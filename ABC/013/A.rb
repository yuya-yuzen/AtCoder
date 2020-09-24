x = gets.chomp
i = 1
["A", "B", "C", "D", "E"].each do |alpha|
    if x == alpha
        puts i
        break
    end
    i += 1
end
