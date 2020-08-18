abk = gets.chomp.split
a = abk[0].to_i
b = abk[1].to_i
k = abk[2].to_i

nums = []
k.times do |i|
    num = a + i
    nums << num
    puts num if num <= b
end

k.times do |i|
    num = b - k + i + 1
    puts num if !nums.include?(num) && num <= b && nums.min < num
end