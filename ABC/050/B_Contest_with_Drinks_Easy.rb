# joisinoお姉ちゃんは、
# あるプログラミングコンテストの決勝を控えています。
# このコンテストでは、N 問の問題が用意されており、
# それらには 1～N の番号がついています。
# joisinoお姉ちゃんは、
# 問題 i(1≦i≦N) を解くのにかかる時間が Ti 秒であることを知っています。
# また、このコンテストでは、M 種類のドリンクが提供されており、
# 1～M の番号がついています。
# そして、ドリンク i(1≦i≦M) を飲むと、脳が刺激され、問
# 題 Pi を解くのにかかる時間が Xi 秒になります。
# 他の問題を解くのにかかる時間に変化はありません。
# コンテスタントは、
# コンテスト開始前にいずれかのドリンクを 1 本だけ飲むことができます。
# joisinoお姉ちゃんは、それぞれのドリンクについて、
# それを飲んだ際に、全ての問題を解くのに何秒必要なのかを知りたくなりました。
# 全ての問題を解くのに必要な時間とは、
# それぞれの問題を解くのにかかる時間の合計です。
# あなたの仕事は、
# joisinoお姉ちゃんの代わりにこれを求めるプログラムを作成することです。

# 必要な情報を取得
n = gets.chomp.to_i

t_line = gets.chomp.split

t = Array.new

n.times do |i|
  t << t_line[i].to_i
end

m = gets.chomp.to_i

p = Array.new
x = Array.new

m.times do
  p_x_line = gets.chomp.split
  p << p_x_line[0].to_i
  x << p_x_line[1].to_i
end

# それぞれの場合において、結果を出力
m.times do |i|
  sum = 0
  
  n.times do |j|
    if j == p[i] - 1
      sum += x[i]
    else
      sum += t[j]
    end
  end
  
  puts sum
end