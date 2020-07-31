a = gets.to_i
b = gets.to_i

(1..3).each do |num|
    if a != num && b != num
        puts num
        break
    end
end