hw = gets.chomp.split
h = hw[0].to_i
w = hw[1].to_i

s = []
h.times do
    input = gets.chomp
    s << input
end

def top h, w, s
    top = 0
    h -= 1
    w -= 1
    3.times do |i|
        top += 1 if h >= 0 && w + i >= 0 && s[h][w + i] == "#"
    end
    return top
end

def middle h, w, s
    middle = 0
    w -= 1
    2.times do |i|
        middle += 1 if w + i * 2 >= 0 && s[h][w + i * 2] == "#"
    end
    return middle
end

def bottom h, w, s, hh
    bottom = 0
    h += 1
    w -= 1
    3.times do |i|
        bottom += 1 if h < hh && w + i >= 0 && s[h][w + i] == "#"
    end
    return bottom
end

def mine h, w, s, hh
    mines = top(h, w, s) + middle(h, w, s) + bottom(h, w, s, hh)
    return mines
end

h.times do |i|
    w.times do |j|
        if s[i][j] == "#"
            print "#"
        else
            print mine(i, j, s, h)
        end
    end
    print "\n"
end