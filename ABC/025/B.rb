nab = gets.chomp.split.map(&:to_i)
n = nab[0]
a = nab[1]
b = nab[2]

position = 0

def distance(a, b, d)
    if d < a
        return a
    elsif d > b
        return b
    else
        return d
    end
end

n.times do
    sd = gets.chomp.split
    s = sd[0]
    d = sd[1].to_i
    length = distance(a, b, d)

    case s
    when "East"
        position += length
    when "West"
        position -= length
    end
end

if position >= 1
    puts "East" + " " + position.to_s
elsif position <= -1
    puts "West" + " " + position.abs.to_s
else
    puts 0
end
