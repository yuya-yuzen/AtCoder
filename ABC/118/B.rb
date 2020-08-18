nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

foods = Array.new(m+1, 0)

n.times do
    input = gets.chomp.split
    k = input[0].to_i
    k.times do |i|
        a = input[i+1].to_i
        foods[a] += 1
    end
end

puts foods.count(n)