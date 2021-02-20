a, b, k = gets.split.map(&:to_i)
count = 0
while count < k
    a -= 1 if a.odd?
    b += a / 2
    a /= 2
    count += 1
    break if count >= k

    b -= 1 if b.odd?
    a += b / 2
    b /= 2
    count += 1
end
puts "#{a} #{b}"
