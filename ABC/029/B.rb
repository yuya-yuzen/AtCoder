count = 0
12.times do
    count += 1 if gets.chomp.include?("r")
end
puts count
