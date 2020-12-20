h, w = gets.chomp.split.map(&:to_i)
a = []
min = 101
h.times do
    row = gets.chomp.split.map(&:to_i)
    row_min = row.min
    min = row_min if row_min < min
    a << row
end

count = 0
a.each do |row|
    row.each do |ele|
        count += ele - min if ele > min
    end
end

puts count
