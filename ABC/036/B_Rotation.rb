n = gets.to_i
s = []
n.times do
    input = gets.chomp.split(//)
    s << input
end

n.times do |i|
    row = ""
    n.times do |j|
        row += s[(n-1)-j][i]
    end
    puts row
end
