input = gets.chomp.split
l = input[0].to_i
r = input[1].to_i

surs = []
(l..r).each do |num|
    sur = num % 2019
    break if surs.count(sur) > 2
    surs << sur
end

if surs.count(0) >= 2
    puts 0
else
    puts surs.min * surs[surs.index(surs.min)+1]
end