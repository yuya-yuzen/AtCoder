abc = gets.chomp.split
a = abc[0].to_i
b = abc[1].to_i
c = abc[2].to_i
if a == b
    puts c
elsif a == c
    puts b
else
    puts a
end