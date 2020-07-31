n = gets.to_i
s = []
n.times do
    input = gets.chomp
    input = input.split(//).sort.join
    s << input
end

count = 0
n.times do |i|
    ((i+1)..(n-1)).each do |j|
        count += 1 if s[i] == s[j]
    end
end

puts count