n = gets.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

diffs = []
n.times do |i|
    ((i+1)..(n-1)).each do |j|
        diff = (a[i] - a[j]).abs
        diffs << diff
    end
end

puts diffs.max