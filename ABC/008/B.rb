n = gets.chomp.to_i
s = []
n.times do
    s << gets.chomp
end

votes = []
s.uniq.each do |s_ele|
    votes << s.count(s_ele)
end

puts s.uniq[votes.find_index(votes.max)]
