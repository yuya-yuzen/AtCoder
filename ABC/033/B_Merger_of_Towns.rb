n = gets.to_i
population = 0
sp = []

largest_population = 0
largest_index = 0

n.times do |i|
    input = gets.chomp.split
    input[1] = input[1].to_i

    if largest_population < input[1]
        largest_population = input[1]
        largest_index = i
    end

    population += input[1]
    sp << input
end

half_population = population / 2
city = "atcoder"
city = sp[largest_index][0] if sp[largest_index][1] > half_population
puts city
