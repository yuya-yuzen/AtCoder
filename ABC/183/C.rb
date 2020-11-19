n, k = gets.chomp.split.map(&:to_i)

t = []
n.times do
    t << gets.chomp.split.map(&:to_i)
end

cities = []
(n-1).times do |i|
    cities << i+1
end

count = 0
patterns = cities.permutation(n-1).to_a
patterns.each do |pattern|
    previous = 0
    sum = 0
    result = true
    pattern.each do |i|
        sum += t[previous][i]
        if sum > k
            result = false
            break
        end
        previous = i
    end
    sum += t[previous][0]
    result = sum == k
    count += 1 if result
end

puts count
