# すめけくんは現在のレートが 1200 未満ならば AtCoder Beginner Contest (ABC) に、
# そうでなければ AtCoder Regular Contest (ARC) に参加することにしました。 
# すめけくんの現在のレート x が与えられます。
# すめけくんが参加するコンテストが ABC ならば ABC と、そうでなければ ARC と出力してください。

x = gets.to_i
if x < 1200
    puts "ABC"
else
    puts "ARC"
end