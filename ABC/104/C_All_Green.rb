dg = gets.chomp.split
d = dg[0].to_i
g = dg[1].to_i
pc = []
d.times do
    input = gets.chomp.split
    input.length.times do |i|
        input[i] = input[i].to_i
    end
    pc << input
end