s = gets.chomp
s.length.times do |i|
    case i
    when 0
        print s[i].upcase
    else
        print s[i].downcase
    end
end
print "\n"
