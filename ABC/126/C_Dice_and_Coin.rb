# すぬけ君は 1 〜 N の整数が等確率で出る N 面サイコロと表と裏が等確率で出るコインを持っています。
# すぬけ君は、このサイコロとコインを使って今から次のようなゲームをします。
# まず、サイコロを 1 回振り、出た目を現在の得点とする。
# 得点が 1 以上 K−1 以下である限り、すぬけ君はコインを振り続ける。
# 表が出たら得点は 2 倍になり、裏が出たら得点は 0 になる。
# 得点が 0 になった、もしくは K 以上になった時点でゲームが終了する。
# このとき、得点が K 以上である場合すぬけ君の勝ち、 0 である場合すぬけ君の負けである。
# N と K が与えられるので、このゲームですぬけ君が勝つ確率を求めてください。

input = gets.chomp.split
n = input[0].to_i
k = input[1].to_i

probability_sum = 0

n.times do |i|
  point = i + 1

  double_count = 0
  while point < k
    point *= 2
    double_count += 1
  end
  
  probability = (1.0 / n) * ((1.0 / 2.0) ** double_count)
  probability_sum += probability
end

puts probability_sum