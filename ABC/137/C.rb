n = gets.to_i
s = Hash.new(0)
count = 0

n.times do
    str = gets.chomp.split(//).sort.join
    if s[str]
        count += s[str]
        s[str] += 1
        next
    end
    s[str] = 0
end

puts count
