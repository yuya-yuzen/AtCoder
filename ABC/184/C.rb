r1, c1 = gets.chomp.split.map(&:to_i)
r2, c2 = gets.chomp.split.map(&:to_i)

if r1 == r2 && c1 == c2
    puts 0
elsif  r1 + c1 == r2 + c2 \
    || r1 - c1 == r2 - c2 \
    || (r1 - r2).abs + (c1 - c2).abs <= 3
    puts 1
elsif  (r1 + c1 + r2 + c2) % 2 == 0 \
    || (r1 - r2).abs + (c1 - c2).abs <= 6 \
    || ((r1 + c1) - (r2 + c2)).abs <= 3 \
    || ((r1 - c1) - (r2 - c2)).abs <= 3
    puts 2
else
    puts 3
end
