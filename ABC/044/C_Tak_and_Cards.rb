na = gets.chomp.split
n = na[0].to_i
a = na[1].to_i

x = gets.chomp.split
n.times do |i|
    x[i] = x[i].to_i
end
x.sort!

count = 0

if !(x.last < a || x.first > a)
    (1..n).each do |i|
        sum_check = 0

        i.times do |j|
            sum_check += x[n-j-1]
        end

        next if sum_check < a

        x_c = x.combination(i).to_a

        x_c.each do |combi|
            sum = 0.0

            combi.each do |num|
                sum += num
            end

            ave = sum / combi.length
            count += 1 if ave == a
        end
    end
end

puts count

# na = gets.chomp.split
# n = na[0].to_i
# a = na[1].to_i

# x = gets.chomp.split
# y = []
# n.times do |i|
#     y << x[i].to_i - a
# end

# y.select! do |num|
#     num == 0
# end

# count = 0
# if y.length > 0
#     (1..y.length).each do |i|
#         y_c = y.combination(i).to_a
#         count += y_c.length
#     end
# end

# puts count
