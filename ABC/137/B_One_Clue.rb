input = gets.chomp.split
k = input[0].to_i
x = input[1].to_i

start = x - k + 1
finish = x + k - 1
(start..finish).each do |num|
    print num
    print " " if num != finish
end
print "\n"