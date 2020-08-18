n = gets.to_i
a = gets.chomp.split
a_index = []
n.times do |i|
    a_index << [a[i].to_i, i+1]
end

a_index.sort!
n.times do |i|
    print a_index[i][1]
    if i != n-1
        print " "
    else
        print "\n"
    end
end