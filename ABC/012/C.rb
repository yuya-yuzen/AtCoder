n = gets.chomp.to_i
forgot = 2025 - n
nums = []
(1..9).each do |i|
    if forgot % i == 0 && forgot/i < 10
        num = [i, forgot/i]
        nums << num
    end
end
nums.each do |num|
    puts "#{num[0]} x #{num[1]}"
end
