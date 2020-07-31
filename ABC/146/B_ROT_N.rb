# frozen_string_literal: true

n = gets.to_i
s = gets.chomp

alphabets = []
('A'..'Z').each do |alphabet|
    alphabets << alphabet
end

s.length.times do |i|
    the_index = alphabets.index(s[i]) + n
    the_index -= 26 if the_index >= 26
    print alphabets[the_index]
end

print "\n"
