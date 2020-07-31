o = gets.chomp
e = gets.chomp
o.length.times do |i|
    print o[i]
    print e[i] if e[i]
end
print "\n"
