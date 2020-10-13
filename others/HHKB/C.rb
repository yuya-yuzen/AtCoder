n = gets.chomp.to_i
p_a = gets.chomp.split
nums = Array.new(200001, false)
at = 0
n.times do |i|
    nums[p_a[i].to_i] = true
    while nums[at]
        at += 1
    end
    puts at
end
