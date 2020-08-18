input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
x = input[2].to_i

min = 1
max = 10**9
middle = (min + max) / 2
while max - min > 1
  price = a * middle + b * middle.to_s.length
  if price <= x
    min = middle
  else
    max = middle
  end
  middle = (min + max) / 2
end

if a * max + b * max.to_s.length <= x
  puts max
elsif a * min + b * min.to_s.length <= x
  puts min
else
  puts 0
end