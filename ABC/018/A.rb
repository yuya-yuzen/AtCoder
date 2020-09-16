a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
arr = [a, b, c].sort.reverse
[a, b, c].each do |point|
    arr.size.times do |i|
        puts i + 1 if point == arr[i]
    end
end
