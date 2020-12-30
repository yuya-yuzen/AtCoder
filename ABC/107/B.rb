h, _ = gets.chomp.split.map(&:to_i)
a = []
h.times do
    a << gets.chomp.split(//)
end

def row_compression(a)
    h = a.size
    remove_row = []

    h.times do |i|
        if !(a[i].include?('#'))
            remove_row << i
        end
    end

    remove_row.size.times do |i|
        a.delete_at(remove_row[i] - i)
    end

    return a
end

def column_compression(a)
    h = a.size
    w = a[0].size
    remove_column = []

    w.times do |i|
        can_remove = true

        h.times do |j|
            if a[j][i] == '#'
                can_remove = false
                break
            end
        end

        if can_remove
            remove_column << i
        end
    end

    remove_column.size.times do |i|
        column = remove_column[i] - i

        h.times do |j|
            a[j].delete_at(column)
        end
    end

    return a
end

while true
    a = row_compression(a)
    tmp = column_compression(a)
    if a == tmp
        break
    else
        a = tmp
    end
end

a.each do |ele|
    puts ele.join
end
