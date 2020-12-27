n, m, x = gets.chomp.split.map(&:to_i)
a_a = []
n.times do
    a_a << gets.chomp.split.map(&:to_i)
end

skills = Array.new(m, 0)
a_a.each do |a|
    m.times do |i|
        skills[i] += a[i + 1]
    end
end

skills.each do |skill|
    if skill < x
        puts -1
        exit
    end
end

def func(n, m, x, a_a, i)
    money = 0
    binary = sprintf('%0*b', n, i)
    skills = Array.new(m, 0)

    n.times do |j|
        if binary[j] == '0'
            next
        end

        a = a_a[j]
        money += a.first

        m.times do |k|
            skills[k] += a[k + 1]
        end
    end

    money = 1200005 if skills.min < x
    return money
end

min = 1200005
(0..(2 ** n - 1)).each do |i|
    money = func(n, m, x, a_a, i)
    min = money if money < min
end

puts min
