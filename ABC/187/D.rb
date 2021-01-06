n = gets.to_i
arr = []
a_sum = 0

n.times do
    a, b = gets.split.map(&:to_i)
    arr << [a * 2 + b, a, b]
    a_sum += a
end

arr.sort!.reverse!

count = 0
t = 0

n.times do |i|
    count += 1
    t += arr[i][1] + arr[i][2]
    a_sum -= arr[i][1]

    if t > a_sum
        puts count
        exit
    end
end

puts count
