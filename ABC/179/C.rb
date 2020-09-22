n = gets.chomp.to_i
count = 0

(1..(n-1)).each do |a|
    count += (n - 1) / a
end

puts count
