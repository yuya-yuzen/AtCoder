k = gets.to_i
if k % 2 == 0 || k % 5 == 0
    puts -1
    exit
end

count = 1
mod = 7 % k
until mod == 0
    mod = (mod * 10 + 7) % k
    count += 1
end
puts count
