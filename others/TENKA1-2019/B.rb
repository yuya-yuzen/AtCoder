n = gets.to_i
s = gets.chomp
k = gets.to_i
word = s[k-1]
n.times { |i| s[i] = '*' if s[i] != word }
puts s
