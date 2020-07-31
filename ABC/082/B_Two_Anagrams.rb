s = gets.chomp.split(//).sort.join
t = gets.chomp.split(//).sort.reverse.join
if s == t
    puts "No"
else
    a = [s, t]
    puts a.sort.first == s ? "Yes" : "No"
end
