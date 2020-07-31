k = gets.to_i
s = gets.chomp
if s.length <= k
    puts s
else
    k.times do |i|
        print s[i]
    end
    puts "..."
end