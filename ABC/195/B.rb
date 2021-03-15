a, b, w = gets.split.map(&:to_i)
w *= 1000

a_tmp = a
b_tmp = b
count = 1
until a_tmp <= w && w <= b_tmp
    a_tmp += a
    b_tmp += b
    count += 1
    if a_tmp > w
        puts 'UNSATISFIABLE'
        exit
    end
end
print count
print ' '

until a_tmp > w
    a_tmp += a
    count += 1
end

print count - 1
print "\n"
