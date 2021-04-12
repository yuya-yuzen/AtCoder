n = gets.chomp
(n.length + 5).times do |i|
    tmp = ''
    i.times do
        tmp += '0'
    end
    num = tmp + n
    l = num.length
    ll = l / 2 + 1
    b = true
    ll.times do |j|
        if num[j] != num[l - 1 - j]
            b = false
            break
        end
    end
    if b
        puts 'Yes'
        exit
    end
end
puts 'No'
