nmxy = gets.chomp.split
n = nmxy[0].to_i
m = nmxy[1].to_i
X = nmxy[2].to_i
Y = nmxy[3].to_i

x = gets.chomp.split
n.times do |i|
    x[i] = x[i].to_i
end

y = gets.chomp.split
m.times do |i|
    y[i] = y[i].to_i
end

war = true
((X + 1)..Y).each do |z|
    agreement = true
    n.times do |i|
        if x[i] >= z
            agreement = false
            break
        end
    end
    if agreement
        m.times do |i|
            if y[i] < z
                agreement = false
                break
            end
        end
    end
    if agreement
        war = false
        break
    end
end

puts war ? "War" : "No War"