arr = gets.chomp.split
arr.length.times do |i|
    arr[i] = arr[i].to_i
end
takahashi = arr[1] * 1.0 / arr[0]
aoki = arr[3] * 1.0 / arr[2]
if takahashi == aoki
    puts "DRAW"
elsif takahashi > aoki
    puts "TAKAHASHI"
else
    puts "AOKI"
end
