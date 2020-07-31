# 以下の条件を満たす 0 以上の整数が存在すれば、それらのうち最小のものを出力してください。
# そのような整数が存在しなければ、 -1と出力してください。
# 十進表記で丁度 N 桁である。
# (0 は 1 桁の整数とする。その他の整数については、先頭に 0 をつけた表記は認めない。)
# 左から数えて si 桁目は ci である。(i=1,2,⋯,M)

nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

s = Array.new
c = Array.new
m.times do
    input = gets.chomp.split
    s << input[0].to_i
    c << input[1].to_i
end

if m == 0
    case n
    when 1
        puts 0
    when 2
        puts 10
    when 3
        puts 100
    end
else
    number = -1
    (0..999).each do |num|
        if num.to_s.length != n
            next
        else
            m.times do |i|
                if num.to_s[s[i]-1] != c[i].to_s
                    break
                elsif i == m-1
                    number = num
                end
            end
        end
        
        if number != -1
            break
        end
    end
    puts number
end
