n = gets.to_i

def judge n
    (0..25).each do |i|
        (0..13).each do |j|
            return true if 4 * i + 7 * j == n
        end
    end
    return false
end

puts judge(n) ? "Yes" : "No"