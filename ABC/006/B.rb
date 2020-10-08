n = gets.chomp.to_i
case n
when 1, 2
    puts 0
when 3
    puts 1
else
    arr = [0, 0, 0, 1]
    (4..n).each do |i|
        arr << (arr[i-1] + arr[i-2] + arr[i-3]) % 10007
    end
    puts arr.last
end
