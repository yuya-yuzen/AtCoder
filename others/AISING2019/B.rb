n = gets.to_i
a, b = gets.split.map(&:to_i)
p_a = gets.split.map(&:to_i)

problem1 = []
problem2 = []
problem3 = []

p_a.each do |ele|
    case ele
    when (0..a)
        problem1 << ele
    when ((a + 1)..b)
        problem2 << ele
    when ((b + 1)..20)
        problem3 << ele
    end
end

puts [problem1.length, problem2.length, problem3.length].min
