nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

sunukes = Array.new(n+1, false)
k.times do
    d = gets.to_i
    a = gets.chomp.split
    d.times do |i|
        a[i] = a[i].to_i
        sunukes[a[i]] = true if sunukes[a[i]] == false
    end
end

puts sunukes.count(false) - 1