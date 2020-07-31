c = gets.chomp
alphabets = []
("a".."z").each do |alphabet|
    alphabets << alphabet
end
the_index = alphabets.index(c)
puts alphabets[the_index+1]