# N  個のリンゴがあります。
# これらはそれぞれリンゴ 1、リンゴ 2、リンゴ 3、...、リンゴ N と呼ばれており、
# リンゴ i の「味」は L+i−1 です。「味」は負になることもありえます。
# また、1 個以上のリンゴを材料として、アップルパイをつくることができます。
# その「味」は、材料となったリンゴの「味」の総和となります。
# あなたはこれらのリンゴを全て材料として、アップルパイをつくる予定でしたが、
# おなかがすいたので 1 個だけ食べることにしました。
# 勿論、食べてしまったリンゴはアップルパイの材料にはできません。
# つくる予定だったアップルパイとできるだけ同じものをつくりたいので、
# N 個のリンゴ全てを材料としてできるアップルパイの「味」と、
# 食べていない N−1 個のリンゴを材料としてできるアップルパイの「味」の差の絶対値が
# できるだけ小さくなるように、食べるリンゴを選ぶことにしました。
# このようにして選ばれたリンゴを食べた時、食べていない N−1 個のリンゴを
# 材料としてできるアップルパイの「味」を求めてください。
# なお、この値は一意に定まることが証明できます。

input = gets.chomp.split
n = input[0].to_i
l = input[1].to_i

def apple_pie n, l, lost
    n_apple_pie = 0
    n.times do |i|
        next if i == lost
        n_apple_pie += l + (i + 1) - 1
    end
    return n_apple_pie
end

n_apple_pie = apple_pie(n, l, -1)

n_1_apple_pies = []
n.times do |i|
    n_1_apple_pies << apple_pie(n, l, i)
end

diff_apple_pies = []
n.times do |i|
    diff_apple_pie = n_apple_pie - n_1_apple_pies[i]
    diff_apple_pie *= (-1) if diff_apple_pie < 0
    diff_apple_pies << diff_apple_pie
end

puts n_1_apple_pies[diff_apple_pies.index(diff_apple_pies.min)]