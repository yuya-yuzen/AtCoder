arr = gets.chomp.split
arr.length.times do |i|
    arr[i] = arr[i].to_i
end

arr.each do |ele|
    if arr.count(ele) == 1 || arr.count(ele) == 3
        puts ele
        break
    end
end
