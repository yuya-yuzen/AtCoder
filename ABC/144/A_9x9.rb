input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

if a > 9 || b > 9
  puts -1
else
  puts a * b
end