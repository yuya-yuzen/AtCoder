# 部分点の解法

n, a = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

count = 0
(0..(2 ** n - 1)).each do |i|
    flag = sprintf('%0*b', n, i)
    sum = 0
    card_count = 0
    n.times do |j|
        if flag[j] == '1'
            sum += x[j]
            card_count += 1
        end
    end
    ave = 1.0 * sum / card_count
    count += 1 if ave == a
end

puts count
