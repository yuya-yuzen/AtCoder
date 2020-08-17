s = gets.chomp
s.length.times do |i|
    print s[i] if i.even?
end
print "\n"