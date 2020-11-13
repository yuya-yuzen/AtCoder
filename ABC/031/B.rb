lh = gets.chomp.split.map(&:to_i)
l = lh[0]
h = lh[1]
n = gets.chomp.to_i

n.times do
    a = gets.chomp.to_i
    if a < l
        puts l - a
    elsif a > h
        puts -1
    else
        puts 0
    end
end
