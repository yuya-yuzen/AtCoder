n, x = gets.chomp.split.map(&:to_i)
s = gets.chomp
n.times do |i|
    if s[i] == 'o'
        x += 1
    elsif x != 0
        x -= 1
    end
end
puts x
