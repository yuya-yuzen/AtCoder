s = gets.chomp
up = [*'A'..'Z']
down = [*'a'..'z']

s.length.times do |i|
    if ((i + 1).odd? && up.include?(s[i])) || ((i + 1).even? && down.include?(s[i]))
        puts 'No'
        exit
    end
end
puts 'Yes'
