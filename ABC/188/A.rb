x, y = gets.split.map(&:to_i)
a = [x, y].sort
puts a.first + 3 > a.last ? 'Yes' : 'No'
