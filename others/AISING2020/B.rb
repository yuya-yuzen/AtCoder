n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
count = 0
n.times do |i|
    count += 1 if (i+1).odd? && a[i].odd?
end
puts count
