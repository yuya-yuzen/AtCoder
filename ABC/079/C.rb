nums = gets.split(//).map(&:to_i)
(0..(2 ** 3 - 1)).each do |i|
    flag = sprintf('%0*b', 3, i)
    sum = nums[0]
    result = sum.to_s
    3.times do |j|
        num = nums[j + 1]
        if flag[j] == '1'
            sum += num
            result += '+'
        else
            sum -= num
            result += '-'
        end
        result += num.to_s
    end
    if sum == 7
        puts result + '=7'
        exit
    end
end
