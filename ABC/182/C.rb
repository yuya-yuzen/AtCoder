n = gets.chomp.to_i
if n % 3 == 0
    puts 0
else
    n = n.to_s.split(//)
    i = 0
    origin_n_length = n.length
    is_continue = true
    while is_continue
        i += 1
        combis = n.combination(origin_n_length - i)
        combis.each do |combi|
            if combi.join.to_i % 3 == 0
                is_continue = false
                break
            end
        end
    end
    if i == origin_n_length || is_continue
        puts -1
    else
        puts i
    end
end
