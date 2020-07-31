hw = gets.chomp.split
h = hw[0].to_i
w = hw[1].to_i

a = []
h.times do
    input = gets.chomp.split
    a << input
end

2.times do
    a.each do |arr|
        all_white = true
        w.times do |i|
            if arr[i] != "."
                all_white = false
                break
            end
        end
        arr.delete! if all_white
    end

    w.times do |i|
        all_white = true
        h.times do |j|
            if a[j][i] != "."
                all_white = false
                break
            end
        end
        if all_white
            h.times do |j|
                a[j].delete_at!(i)
            end
        end
    end
end

a.each do |arr|
    arr.length.times do |i|
        print arr[i]
    end
    print "\n"
end