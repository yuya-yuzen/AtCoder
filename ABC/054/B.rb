n, m = gets.chomp.split.map(&:to_i)
a = []
n.times { a << gets.chomp }
b = []
m.times { b << gets.chomp }

x = n - m + 1
x.times do |i|
    x.times do |j|
        count = 0
        m.times do |k|
            m.times do |l|
                if a[i+k][j+l] == b[k][l]
                    count += 1
                end
            end
        end
        if count == m ** 2
            puts 'Yes'
            exit
        end
    end
end

puts 'No'
