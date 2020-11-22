n = gets.chomp.to_i
xy = []
n.times { xy << gets.chomp.split.map(&:to_i) }

def return_abs_a x1, y1, x2, y2
    return ((y2-y1)*1.0/(x2-x1)).abs
end

result = false
all_patterns = xy.combination(3).to_a

all_patterns.each do |pattern|
    x1, y1 = pattern[0]
    x2, y2 = pattern[1]
    x3, y3 = pattern[2]

    a12 = return_abs_a(x1, y1, x2, y2)
    a23 = return_abs_a(x2, y2, x3, y3)
    a31 = return_abs_a(x3, y3, x1, y1)

    if a12 == a23 && a23 == a31 && a31 == a12
        result = true
        break
    end
end

puts result ? "Yes" : "No"
