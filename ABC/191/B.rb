n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.delete(x)
len = a.length
len.times do |i|
    print a[i]
    break if i == len - 1
    print ' '
end
print "\n"
