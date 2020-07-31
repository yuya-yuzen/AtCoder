# あなたは整数 x を持っています。最初、x=0 です。
# あなたは、長さ N の文字列 S をもらったので、
# これを使って N 回の操作を行いました。 
# i 回目の操作では、Si=I ならば x の値を 1 増やし、
# Si=D ならば x の値を 1 減らしました。
# 操作の途中( 1 回目の操作の前、N 回目の操作の後も含む)で 
# x がとる値の最大値を答えてください。

# 情報を準備、取得
x = 0
n = gets.chomp.to_i
s = gets.chomp

# それぞれの操作ごとのxの状態を格納する配列を宣言
state = [x]

# 操作を実行
n.times do |i|
  case s[i]
  when "I"
    x += 1
  when "D"
    x -= 1
  end
  
  state << x
end

# 結果を出力
puts state.sort.last