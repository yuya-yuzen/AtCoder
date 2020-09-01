s = gets.chomp.split(//)
["A", "B", "C", "D", "E", "F"].each do |word|
    print s.count(word)
    break if word == "F"
    print " "
end
print "\n"
