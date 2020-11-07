n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
total_population = a.sum

if total_population % n != 0
    puts -1
elsif a.uniq.length == 1
    puts 0
else
    blidge = 0
    area_population = a[0]
    area_count = 1
    (n-1).times do |i|
        if area_population == (total_population / n) * area_count
            area_population = a[i+1]
            area_count = 1
        else
            area_population += a[i+1]
            area_count += 1
            blidge += 1
        end
    end
    puts blidge
end
