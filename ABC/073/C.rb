# あなたは、joisinoお姉ちゃんと以下のようなゲームをしています。
# 最初、何も書いていない紙がある。
# joisinoお姉ちゃんが一つの数字を言うので、
# その数字が紙に書いてあれば紙からその数字を消し、
# 書いていなければその数字を紙に書く。これを N 回繰り返す。
# その後、紙に書かれている数字がいくつあるかを答える。
# joisinoお姉ちゃんが言った数字が、言った順番に A1,...,AN として与えられるので、
# ゲーム終了後に紙に書かれている数字がいくつあるか答えてください。

# 何も書いていない紙を定義
paper = Array.new

# 操作を繰り返す回数を取得
n = gets.chomp.to_i

# お姉ちゃんが言う数字をn回取得
n.times do
  a = gets.to_i
  paper << a
end

paper.sort!

i = 1
count = 1
length = paper.length
num = paper[0]
while i < n
  if num == paper[i]
    count += 1
  else
    if count != 1
      length -= count
      length += 1 if count.odd?
      count = 1
    end
    num = paper[i]
  end
  i += 1
end

if count != 1
  length -= count
  length += 1 if count.odd?
end

# 結果を出力
puts length