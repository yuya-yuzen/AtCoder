h, w, k = gets.chomp.split.map(&:to_i)
c = []
h.times do
    c << gets.chomp
end

def count_black(c, row, column)
    h = row.length
    w = column.length
    count = 0

    h.times do |i|
        if row[i] == '0'
            next
        end
        w.times do |j|
            if column[j] == '0'
                next
            end
            if c[i][j] == '#'
                count += 1
            end
        end
    end

    return count
end

pattern = 0
(2 ** h).times do |i|
    row = sprintf('%0*b', h, i)
    (2 ** w).times do |j|
        column = sprintf('%0*b', w, j)
        if count_black(c, row, column) == k
            pattern += 1
        end
    end
end
puts pattern
