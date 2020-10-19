w = gets.chomp
w.length.times do |i|
    print w[i] if !["a", "i", "u", "e", "o"].include?(w[i])
end
print "\n"
