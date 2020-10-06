c = []
4.times do
    c << gets.chomp.split
end

order = [3, 2, 1, 0]
order.each do |i|
    order.each do |j|
        print c[i][j]
        print " " if j != 0
    end
    print "\n"
end
