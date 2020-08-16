n = gets.to_i
l = gets.chomp.split
n.times do |i|
    l[i] = l[i].to_i
end

if n >= 3
    l.sort!
    count = 0
    combis = l.combination(3).to_a
    combis.each do |combi|
        next if combi.uniq.count != 3
        a = combi[0]
        b = combi[1]
        c = combi[2]
        count += 1 if a + b > c && b + c > a && c + a > b
    end
    puts count
else
    puts 0
end
