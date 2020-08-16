ks = gets.chomp.split
k = ks[0].to_i
s = ks[1].to_i

count = 0
(0..k).each do |x|
    (0..k).each do |y|
        z = s - (x + y)
        count += 1 if 0 <= z && z <= k
    end
end

puts count
