n = gets.chomp.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

count = 0
a.each do |a_ele|
    while [2, 4, 5, 6, 8].include?(a_ele)
        count += 1
        a_ele -= 1
    end
end

puts count
