s = gets.chomp
k = gets.to_i
strs = []
if s.length < k
    puts 0
else
    (s.length - k + 1).times do |i|
        str = s.slice(i, k)
        strs << str if !strs.include?(str)
    end
    puts strs.length
end
