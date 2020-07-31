xn = gets.chomp.split
x = xn[0].to_i
n = xn[1].to_i

if n != 0
    p_a = gets.chomp.split
    n.times do |i|
        p_a[i] = p_a[i].to_i
    end

    x_plus = x
    x_minus = x
    loop do
        if !p_a.include?(x_minus)
            puts x_minus
            break
        end
        if !p_a.include?(x_plus)
            puts x_plus
            break
        end
        x_plus += 1
        x_minus -= 1
    end
else
    puts x
end
