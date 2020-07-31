input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
k = input[2].to_i

if k - (a + b) >= 0
    a = 0
    b = 0
elsif k - a >= 0
    b -= (k - a)
    a = 0
else
    a -= k
end

puts a.to_s + " " + b.to_s