nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i
py = []
m.times do
    input = gets.chomp.split
    input.length.times do |i|
        input[i] = input[i].to_i
    end
    py << input
end