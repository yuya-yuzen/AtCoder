nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

n -= 12 if n >= 12

n_angle = (360 / 12.0 * n) + (30 / 60.0 * m)
m_angle = 360 / 60.0 * m

def diff a, b
    if a - b > 180
        return 360 - (a - b)
    end
    return a - b
end

if n_angle > m_angle
    puts diff(n_angle, m_angle)
else
    puts diff(m_angle, n_angle)
end
