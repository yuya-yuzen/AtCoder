s = gets.chomp
previous_word = s[0]
same_word_count = 1
s.length.times do |i|
    this_word = s[i+1]
    if this_word == previous_word
        same_word_count += 1
    else
        print previous_word + same_word_count.to_s
        previous_word = this_word
        same_word_count = 1
    end
end
print "\n"
