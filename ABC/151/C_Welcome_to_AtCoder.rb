nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

p_a = Array.new(n+1){Array.new(2, 0)}
m.times do
    ps = gets.chomp.split
    number = ps[0].to_i
    judge = ps[1]
    case judge
    when "AC"
        p_a[number][0] += 1
    when "WA"
        if p_a[number][0] == 0
            p_a[number][1] += 1
        end
    end
end

ac_count = 0
wa_count = 0
n.times do |i|
    if p_a[i+1][0] > 0
        ac_count += 1
        wa_count += p_a[i+1][1]
    end
end

puts ac_count.to_s + " " + wa_count.to_s