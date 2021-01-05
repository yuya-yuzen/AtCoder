n = gets.to_i
s = {}; strs = []

n.times do
    str = gets.chomp
    s[str] = true
    strs << str
end

strs.each do |str|
    key = '!' + str
    if s[key]
        puts str
        exit
    end
end

puts 'satisfiable'
