n = gets.to_i
(1..1000001).each do |i|
    if (i.to_s * 2).to_i > n
        puts i - 1
        exit
    end
end
