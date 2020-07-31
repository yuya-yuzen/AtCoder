nmx = gets.chomp.split
m = nmx[1].to_i
x = nmx[2].to_i

a = gets.chomp.split
m.times do |i|
    a[i] = a[i].to_i
end

left_cost = 9999999999
if x >= 2
    left_cost = 0
    a.slice(0, x-2).length.times do
        left_cost += 1
    end
end

right_cost = 9999999999
if m-x+1 >= x-1
    right_cost = 0
    a.slice(x-1, m-x+1).length.times do
        right_cost += 1
    end
end

costs = [left_cost, right_cost]
puts costs.min