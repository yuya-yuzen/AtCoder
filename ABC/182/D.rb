n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

position = 0
total_move = 0
max_move = 0
max_pos = 0

a.each do |move|
    total_move += move
    max_move = total_move if total_move > max_move
    max_pos = position + max_move if position + max_move > max_pos
    position += total_move
end

puts max_pos
