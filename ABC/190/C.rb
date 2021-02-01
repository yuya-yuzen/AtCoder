n, m = gets.split.map(&:to_i)
a = []; b = []
m.times do
    input = gets.split.map(&:to_i)
    a << input[0]
    b << input[1]
end

k = gets.to_i
c = []; d = []
k.times do
    input = gets.split.map(&:to_i)
    c << input[0]
    d << input[1]
end

count_max = 0
(2 ** k).times do |i|
    flag = sprintf('%0*b', k, i)
    dish = Array.new(n + 1, false)

    k.times do |j|
        index = 0
        case flag[j]
        when '0'
            index = c[j]
        when '1'
            index = d[j]
        end
        dish[index] = true
    end

    count = 0
    m.times do |j|
        if dish[a[j]] && dish[b[j]]
            count += 1
        end
    end

    if count > count_max
        count_max = count
    end
end

puts count_max
