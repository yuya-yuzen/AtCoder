# A さん、B さん、C さんの 3 人が以下のようなカードゲームをプレイしています。
# 最初、3 人はそれぞれ a、b、c いずれかの文字が書かれたカードを、何枚か持っている。
# これらは入力で与えられた順番に持っており、途中で並べ替えたりしない。
# A さんのターンから始まる。
# 現在自分のターンである人がカードを 1 枚以上持っているならば、そのうち先頭のカードを捨てる。
# その後、捨てられたカードに書かれているアルファベットと同じ名前の人 (例えば、カードに a と書かれていたならば A さん) のターンとなる。
# 現在自分のターンである人がカードを 1 枚も持っていないならば、その人がゲームの勝者となり、ゲームは終了する。
# 3 人が最初に持っているカードがそれぞれ先頭から順に与えられます。
# 具体的には、文字列 SA、SB、SC が与えられます。
# 文字列 SA の i 文字目 ( 1≤i≤|SA| ) に書かれている文字が、
# A さんの持っている中で先頭から i 番目のカードに 書かれている文字です。
# 文字列 SB、 SC についても同様です。
# 最終的に誰がこのゲームの勝者となるかを求めてください。

# 情報を取得
a = gets.chomp
b = gets.chomp
c = gets.chomp

# 最初のカードに書かれた文字を返し、そのカードを捨てる関数を定義
def process(card)
  if card.empty?
    result = "end"
  else
    result = card.chr.upcase
  end
  
  card.slice!(0)
  
  return result
end

# カードゲームを行うための情報を整理
result = String.new
last_player = a.chr.upcase
next_card = a
next_player = process(next_card)

# カードゲームを行い、勝者を判定
loop do
  case next_player
  when "A"
    next_card = a
  when "B"
    next_card = b
  when "C"
    next_card = c
  else
    next_card = false
  end
  
  if next_card
    last_player = next_player
    next_player = process(next_card)
  else
    result = last_player
    break
  end
end

# 結果を出力
puts result