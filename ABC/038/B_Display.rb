hw1 = gets.chomp.split
h1 = hw1[0].to_i
w1 = hw1[1].to_i

hw2 = gets.chomp.split
h2 = hw2[0].to_i
w2 = hw2[1].to_i

if h1 == h2 || h1 == w2 || w1 == h2 || w1 == w2
    puts "YES"
else
    puts "NO"
end
