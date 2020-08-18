require 'prime'
n = gets.to_i
move_counts = []
if Prime.prime?(n)
    move_counts << n - 1
else
    (2..Math.sqrt(n).to_i).each do |a|
        if n % a == 0
            b = n / a
            move_counts << a + b - 2
        end
    end
end
puts move_counts.min