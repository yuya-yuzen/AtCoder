n = gets.chomp.to_i
r = []
n.times do
    r << gets.chomp.to_i
end

r.sort!.reverse!
without_pai = 0

n.times do |i|
    ele = r[i] ** 2
    if i.even?
        without_pai += ele
    else
        without_pai -= ele
    end
end

puts without_pai * Math::PI
