n = gets.to_i
a1 = gets.chomp.split.map(&:to_i)
a2 = gets.chomp.split.map(&:to_i)

candies = []
n.times do |i|
    candy = 0
    (0..i).each do |j|
        candy += a1[j]
    end
    (i..(n - 1)).each do |j|
        candy += a2[j]
    end
    candies << candy
end

puts candies.max
