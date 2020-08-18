n = gets.to_i
same_number = [111, 222, 333, 444, 555, 666, 777, 888, 999]
same_number.each do |num|
    if n <= num
        puts num
        break
    end
end