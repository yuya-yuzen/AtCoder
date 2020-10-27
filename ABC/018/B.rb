s = gets.chomp
n = gets.chomp.to_i
n.times do
    lr = gets.chomp.split
    l = lr[0].to_i
    r = lr[1].to_i

    reverse_str = s[l-1, r-l+1].reverse
    index_reverse_str = 0
    (l-1..r-1).each do |i|
        s[i] = reverse_str[index_reverse_str]
        index_reverse_str += 1
    end
end
puts s
