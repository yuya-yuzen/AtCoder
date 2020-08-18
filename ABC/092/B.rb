# ある合宿におやつとしてチョコレートが何個か準備されました。
# 合宿は N 人が参加して D 日間行われました。
# i 人目の参加者 (1≤i≤N) は合宿の 1,Ai+1,2Ai+1,... 日目に
# チョコレートを 1 個ずつ食べました。
# その結果、合宿終了後に残っていたチョコレートは X 個となりました。
# また、合宿の参加者以外がチョコレートを食べることはありませんでした。
# 合宿開始前に準備されていたチョコレートの個数を求めてください。

n = gets.to_i

input_line_2 = gets.chomp.split
d = input_line_2[0].to_i
x = input_line_2[1].to_i

a = Array.new

n.times do
  input_line = gets.to_i
  a << input_line
end

sum = x

n.times do |i|
  the_person_eat = 1
  day = 1

  loop do
    day += a[i]

    if day > d
      break
    else
      the_person_eat += 1
    end
  end

  sum += the_person_eat
end

puts sum
