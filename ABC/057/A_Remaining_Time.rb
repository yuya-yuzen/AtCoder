# イルカはプログラミングコンテスト好きで、
# 今日はAtCoderのコンテストに参加します。
# 現在時刻は、24 時間表記 (0:00〜23:59) で
# A 時ちょうどであり、コンテストがちょうど B 時間後に始まります。
# コンテストの開始時刻は、24 時間表記で何時ちょうどでしょうか?

ab = gets.chomp.split
a = ab[0].to_i
b = ab[1].to_i

if a + b >= 24
    puts a + b - 24
else
    puts a + b
end