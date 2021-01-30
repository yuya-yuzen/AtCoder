a, b, c = gets.split.map(&:to_i)

if c == 1
    b -= 1
    if b < 0
        puts 'Takahashi'
        exit
    end
end

while a >= 0 && b >= 0
    a -= 1
    if a < 0
        puts 'Aoki'
        exit
    end

    b -= 1
    if b < 0
        puts 'Takahashi'
        exit
    end
end
