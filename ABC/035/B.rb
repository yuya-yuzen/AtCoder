s = gets.chomp
t = gets.to_i

x = 0
y = 0
any = 0

s.length.times do |i|
    case s[i]
    when "L"
        x -= 1
    when "R"
        x += 1
    when "U"
        y += 1
    when "D"
        y -= 1
    when "?"
        any += 1
    end
end

case t
when 1
    puts x.abs + y.abs + any
when 2
    while x.abs + y.abs < any
        any -= 2
    end
    puts (x.abs + y.abs) - any
end
