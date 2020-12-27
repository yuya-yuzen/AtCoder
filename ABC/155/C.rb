n = gets.to_i
s = []
n.times do
    s << gets.chomp
end
s.sort!

s_uniq = s.uniq
s_uniq_count = []
count = 0
str = s_uniq.first

n.times do |i|
    if s[i] != str
        str = s[i]
        s_uniq_count << count
        count = 1
        next
    end
    count += 1
end
s_uniq_count << count

max = s_uniq_count.max
(s_uniq_count.length).times do |i|
    if s_uniq_count[i] == max
        puts s_uniq[i]
    end
end
